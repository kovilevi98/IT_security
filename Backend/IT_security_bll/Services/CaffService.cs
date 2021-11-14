using AnimatedGif;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using IT_security_bll.Dto.Caff;
using IT_security_bll.Dto.Comment;
using IT_security_bll.Extensions;
using IT_security_bll.Helper.Pagination;
using IT_security_bll.Interfaces;
using IT_security_common.Exceptions;
using IT_security_dal.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;

namespace IT_security_bll.Services
{
    public class CaffService : ICaffService
    {
        [DllImport(@"C:\Users\tamas\source\repos\Caff\Caff\Caffer.dll", EntryPoint = "processor", CallingConvention = CallingConvention.StdCall)]
        public static extern int processor(string caffIn, string folderOut);

        private readonly ITSecurityDbContext _dbContext;
        private readonly IRequestContext _requestContext;
        private readonly IHostEnvironment _hostEnvironment;
        private readonly IMapper _mapper;

        public CaffService(
            ITSecurityDbContext dbContext,
            IHostEnvironment hostEnvironment,
            IRequestContext requestContext,
            IMapper mapper)
        {
            _dbContext = dbContext;
            _hostEnvironment = hostEnvironment;
            _requestContext = requestContext;
            _mapper = mapper;
        }

        public async Task<CaffDto> Upload(IFormFile caffFile)
        {
            var uploadLocation = _hostEnvironment.ContentRootPath;
            var filename = caffFile.FileName.Split('.')[0];
            var randomname = Guid.NewGuid().ToString();
            var caffUploadPath = Path.Combine(uploadLocation, "Upload", "Caff", $"{randomname}.caff");
            await WriteToFile(caffUploadPath, caffFile);

            var resultLocation = Path.Combine(uploadLocation, "Upload", "Ciff", randomname) + "\\";
            Directory.CreateDirectory(resultLocation);

            int timeout = 30_000;
            var task = Task.Run(() => processor(caffUploadPath, resultLocation));
            var completedTask = await Task.WhenAny(task, Task.Delay(timeout));
            if (completedTask == task)
            {
                var result = task.Result;
                if (result != 0)
                    throw new BusinessException("Invalid caff file");

                var finalDirectory = Path.Combine(uploadLocation, "wwwroot", randomname);

                Directory.CreateDirectory(finalDirectory);
                var gifLocation = Path.Combine(finalDirectory, $"{filename}.gif");
                var caffPath = Path.Combine(finalDirectory, $"{filename}.caff");
                File.Copy(caffUploadPath, caffPath);

                // Delete uploaded caff
                File.Delete(caffUploadPath);

                var metafilePath = resultLocation + "meta.txt";
                string[] lines = File.ReadAllLines(metafilePath);
                var imageCount = int.Parse(lines[0]);
                var listImageDisplayLengths = new List<int>();

                for (int i = 0; i < imageCount; i++)
                {
                    listImageDisplayLengths.Add(int.Parse(lines[i + 1]));
                }

                using (var gifCreator = new AnimatedGifCreator(gifLocation))
                {
                    for (int i = 0; i < imageCount; i++)
                    {
                        var imagePath = Path.Combine(resultLocation, $"{i}.bmp");
                        using (var img = Image.FromFile(imagePath))
                        {
                            var displayLength = listImageDisplayLengths[i];
                            gifCreator.AddFrame(img, delay: displayLength, quality: GifQuality.Default);
                        }
                    }
                }

                // Delete generated ciff
                var di = new DirectoryInfo(resultLocation);
                foreach (FileInfo file in di.GetFiles()) file.Delete();
                foreach (DirectoryInfo subDirectory in di.GetDirectories()) subDirectory.Delete(true);

                var caff = new Caff
                {
                    GeneratedName = randomname,
                    CaffName = filename,
                    UploadedDate = DateTime.Now,
                    UploadedByUserId = _requestContext.ApplicationUserId,
                    GifUrl = $"{randomname}/{filename}.gif",
                    CaffUrl = $"{randomname}/{filename}.caff"
                };

                _dbContext.Caffs.Add(caff);
                await _dbContext.SaveChangesAsync();

                var caffFromDb = await _dbContext.Caffs
                    .Include(c => c.UploadedByUser)
                    .SingleAsync(c => c.CaffId == caff.CaffId);

                return _mapper.Map<CaffDto>(caffFromDb);
            }
            else
            {
                throw new BusinessException("Caff parsing reached timeout, try again later");
            }
        }

        public async Task<DownloadInfoDto> Download(int caffId)
        {
            var caff = await _dbContext.Caffs.SingleOrDefaultAsync(c => c.CaffId == caffId)
                ?? throw new EntityNotFoundException($"CAFF with id {caffId} was not found");

            string path = Path.Combine(_hostEnvironment.ContentRootPath, "wwwroot", caff.GeneratedName, $"{caff.CaffName}.caff");

            byte[] bytes = await File.ReadAllBytesAsync(path);

            return new DownloadInfoDto
            {
                FileName = caff.CaffName,
                FileContent = bytes
            };
        }

        public async Task<PageResponse<CaffDto>> Search(PageRequest pageRequest, CaffFilter caffFilter)
        {
            var caffEntities = await _dbContext.Caffs
                .Include(c => c.UploadedByUser)
                .Where(!string.IsNullOrEmpty(caffFilter.CaffName), c => c.CaffName.Contains(caffFilter.CaffName))
                .ToPagedListAsync(pageRequest);

            var mappedItems = _mapper.Map<List<CaffDto>>(caffEntities.Results);
            return new PageResponse<CaffDto>(mappedItems, caffEntities.CurrentPage, caffEntities.TotalCount);
        }

        public async Task<CaffDto> Get(int caffId)
        {
            var caff = await _dbContext.Caffs
                .Include(c => c.UploadedByUser)
                .SingleOrDefaultAsync(c => c.CaffId == caffId)
                ?? throw new EntityNotFoundException($"CAFF with id {caffId} was not found");

            return _mapper.Map<CaffDto>(caff);
        }

        
        public async Task Delete(int caffId)
        {
            var caff = await _dbContext.Caffs
                .Include(c => c.Comments)
                .SingleOrDefaultAsync(c => c.CaffId == caffId)
                ?? throw new EntityNotFoundException($"CAFF with id {caffId} was not found");

            _dbContext.Caffs.Remove(caff);
            await _dbContext.SaveChangesAsync();
        }

        public async Task<PageResponse<CommentDto>> GetComments(int caffId, PageRequest pageRequest)
        {
            var caff = await _dbContext.Caffs
                .SingleOrDefaultAsync(c => c.CaffId == caffId)
                ?? throw new EntityNotFoundException($"CAFF with id {caffId} was not found");

            return await _dbContext.Comments
                .Where(c => c.CaffId == caffId)
                .ProjectTo<CommentDto>(_mapper.ConfigurationProvider)
                .ToPagedListAsync(pageRequest);
        }

        public async Task<CommentDto> AddComment(int caffId, AddCommentDto comment)
        {
            var caff = await _dbContext.Caffs
                .SingleOrDefaultAsync(c => c.CaffId == caffId)
                ?? throw new EntityNotFoundException($"CAFF with id {caffId} was not found");

            var commentToCreate = new Comment
            {
                CommentedByUserId = _requestContext.ApplicationUserId,
                CaffId = caffId,
                CommentText = comment.CommentText
            };

            _dbContext.Comments.Add(commentToCreate);
            await _dbContext.SaveChangesAsync();

            return await _dbContext.Comments
                .ProjectTo<CommentDto>(_mapper.ConfigurationProvider)
                .SingleAsync(c => c.CommentId == commentToCreate.CommentId);
        }

        public async Task DeleteComment(int caffId, int commentId)
        {
            var comment = await _dbContext.Comments
                .SingleOrDefaultAsync(c => c.CommentId == commentId && c.CaffId == caffId)
                ?? throw new EntityNotFoundException($"Comment with id {commentId} was not found");

            _dbContext.Comments.Remove(comment);
            await _dbContext.SaveChangesAsync();
        }

        private async Task WriteToFile(string filePath, IFormFile formFile)
        {
            using (var fileStream = new FileStream(filePath, FileMode.Create))
            {
                await formFile.CopyToAsync(fileStream);
            }
        }
    }
}
