using IT_security_bll.Services;
using IT_security_dal.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System.Threading.Tasks;

namespace IT_security_backend
{
    public class Program
    {
        public static async Task Main(string[] args)
        {
            var host = CreateHostBuilder(args).Build();

            using (var scope = host.Services.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<ITSecurityDbContext>();
                var seedService = scope.ServiceProvider.GetRequiredService<SeedService>();

                //context.Database.EnsureDeleted();
                context.Database.EnsureCreated();

                await seedService.SeedRoles();
                await seedService.SeedUsers();
            }

            await host.RunAsync();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });
    }
}
