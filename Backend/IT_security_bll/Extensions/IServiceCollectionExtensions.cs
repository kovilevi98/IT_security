using IT_security_dal.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_bll.Extensions
{
    public static class IServiceCollectionExtensions
    {
        public static IServiceCollection ConfigureDatabase(this IServiceCollection services, IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("Development");
            services.AddDbContext<ITSecurityDbContext>(opt => opt.UseSqlServer(connectionString));

            return services;
        }

        public static IServiceCollection ConfigureIdentity(this IServiceCollection services, IConfiguration configuration)
        {
            var builder = services.AddIdentityCore<ApplicationUser>(options =>
            {
                // Production requirements
                options.Password = new PasswordOptions()
                {
                    RequiredLength = 8,
                    RequireDigit = true,
                    RequireLowercase = true,
                    RequireNonAlphanumeric = true,
                    RequireUppercase = true
                };

                options.SignIn.RequireConfirmedEmail = true;
                options.User.RequireUniqueEmail = true;
            })
            .AddRoles<IdentityRole>()
            .AddEntityFrameworkStores<ITSecurityDbContext>()
            ;

            return services;
        }

    }
}
