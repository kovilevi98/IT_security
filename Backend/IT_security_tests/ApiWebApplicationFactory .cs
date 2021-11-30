using IT_security_backend;
using IT_security_bll.Services;
using IT_security_dal.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System;
using System.IO;
using System.Linq;

namespace IT_security_tests
{
    public class ApiWebApplicationFactoryy<TStartup> : WebApplicationFactory<TStartup> where TStartup : class
    {
        protected override void ConfigureWebHost(IWebHostBuilder builder)
        {
            builder.ConfigureServices(services =>
            {
                var descriptor = services.SingleOrDefault(
                    d => d.ServiceType ==
                        typeof(DbContextOptions<ITSecurityDbContext>));

                services.Remove(descriptor);

                services.AddDbContext<ITSecurityDbContext>(options =>
                {
                    options.UseInMemoryDatabase("InMemoryDbForTesting");
                });

                var sp = services.BuildServiceProvider();

                using (var scope = sp.CreateScope())
                {
                    var scopedServices = scope.ServiceProvider;
                    var db = scopedServices.GetRequiredService<ITSecurityDbContext>();
                    var logger = scopedServices
                        .GetRequiredService<ILogger<WebApplicationFactory<TStartup>>>();

                    db.Database.EnsureCreated();

                    var seedService = scope.ServiceProvider.GetRequiredService<SeedService>();

                    seedService.SeedRoles().Wait();
                    seedService.SeedUsers().Wait();
                }
            });
        }
    }
}