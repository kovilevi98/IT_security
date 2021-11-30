using IT_security_backend;
using IT_security_tests.Refit;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Testing;
using Refit;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;
using Xunit;

namespace IT_security_tests
{
    public class CaffControllerTests : IClassFixture<ApiWebApplicationFactoryy<Startup>>
    {
        private readonly ApiWebApplicationFactoryy<Startup> _factory;

        readonly HttpClient _client;
         ICaffApi _caffApi;

        const string invalidPath = "\\caffs\\invalid\\";
        const string validPath = "\\caffs\\valid\\";

        public CaffControllerTests(ApiWebApplicationFactoryy<Startup> factory)
        {
            _factory = factory;
            _client = factory.CreateClient(new WebApplicationFactoryClientOptions
            {
                AllowAutoRedirect = false
            });

            _caffApi = RestService.For<ICaffApi>(_client);
            _factory = factory;
        }

        [Theory]
        [InlineData("ervenytelen_block_id_1.caff")]
        [InlineData("ervenytelen_block_id_2.caff")]
        [InlineData("ervenytelen_block_id_3.caff")]
        [InlineData("hibas_hossz_caff_block_length.caff")]
        [InlineData("hibas_hossz_ciff_content_size.caff")]
        [InlineData("hibas_hossz_ciff_header_size.caff")]
        [InlineData("hibas_num_anim.caff")]
        [InlineData("rossz_caff_magic.caff")]
        [InlineData("rossz_ciff_magic.caff")]
        [InlineData("tul_rovid_fajl.caff")]
        [InlineData("ures_fajl.caff")]
        [InlineData("veletlen_zaj.caff")]
        public async Task ShouldThrowErvenytelenCaff_1(string file)
        {
            var directory = Directory.GetCurrentDirectory();

            var loginResult = await _caffApi.Login(new IT_security_bll.Dto.Auth.SignInDto { Email = "user@test.hu", Password = "passWORD123!" });
            _client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", loginResult.Content.Token);
            _caffApi = RestService.For<ICaffApi>(_client);

            var path = directory + invalidPath + file;

            using (FileStream fs = File.OpenRead(path))
            {
                using (var streamContent = new StreamContent(fs))
                {
                    var byteArray = await streamContent.ReadAsByteArrayAsync();
                    var byteArrayContent = new ByteArrayContent(byteArray);

                    var response = await _caffApi.Upload(new ByteArrayPart(byteArray, "fileName"));

                    var error = await response.Error.GetContentAsAsync<HttpError>();

                    Assert.Equal("Invalid caff file", error.GetValueOrDefault("detail"));
                }
            }
        }

        [Theory]
        [InlineData("1.caff")]
        [InlineData("2.caff")]
        [InlineData("3.caff")]
        public async Task ShouldUpload_1(string file)
        {
            var directory = Directory.GetCurrentDirectory();

            var loginResult = await _caffApi.Login(new IT_security_bll.Dto.Auth.SignInDto { Email = "user@test.hu", Password = "passWORD123!" });
            _client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", loginResult.Content.Token);
            _caffApi = RestService.For<ICaffApi>(_client);

            var path = directory + validPath + file;

            using (FileStream fs = File.OpenRead(path))
            {
                using (var streamContent = new StreamContent(fs))
                {
                    var byteArray = await streamContent.ReadAsByteArrayAsync();
                    var byteArrayContent = new ByteArrayContent(byteArray);

                    var response = await _caffApi.Upload(new ByteArrayPart(byteArray, "fileName"));

                    var error = response.Error;

                    Assert.Null(error);
                }
            }
        }
    }
}