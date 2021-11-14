using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using IT_security_api.ErrorHandling;
using Microsoft.IdentityModel.Tokens;
using IT_security_bll.Extensions;
using System.Text;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using IT_security_bll.Interfaces;
using IT_security_bll.Services;
using IT_security_bll.Mapping;
using IT_security_dal.Models;
using Microsoft.AspNetCore.Identity;
using Hellang.Middleware.ProblemDetails;

namespace IT_security_backend
{
    public class Startup
    {
        private readonly IConfiguration _configuration;

        private readonly IHostEnvironment _environment;

        public Startup(IConfiguration configuration, IHostEnvironment environment)
        { 
            _configuration = configuration;
            _environment = environment;
        }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();

            services.AddProblemDetailsForExceptions(_configuration);

            if (!_environment.IsDevelopment())
            {
                services.AddResponseCompression(o => o.EnableForHttps = true);
            }

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "IT_security_backend", Version = "v1" });
            });

            services.ConfigureDatabase(_configuration);

            var builder = services.AddIdentity<ApplicationUser, IdentityRole>(options =>
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
            .AddEntityFrameworkStores<ITSecurityDbContext>()
            .AddDefaultTokenProviders();

            var secret = _configuration.GetSection("TokenOptions:Secret").Value;
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(secret));
            services
                .AddAuthentication(opt =>
                {
                    opt.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                    opt.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
                    opt.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
                })
                .AddJwtBearer(opt =>
                {
                    opt.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidateIssuerSigningKey = true,
                        IssuerSigningKey = key,
                        ValidateAudience = false,
                        ValidateIssuer = false
                    };
                });

            services.AddHttpContextAccessor();
            services.AddScoped<IRequestContext, HttpRequestContext>();


            services.AddAutoMapper(typeof(MappingProfile));

            services.AddCors(o => o.AddPolicy("LocalCors", builder =>
            {
                builder.WithOrigins("http://localhost:3000")
                       .AllowAnyMethod()
                       .AllowAnyHeader()
                       .AllowCredentials();
            }));

            services.AddTransient<SeedService>();

            services.AddScoped<ITokenService, TokenService>();
            services.AddScoped<ICaffService, CaffService>();
            services.AddScoped<IAuthService, AuthService>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                // app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "IT_security_backend v1"));
            }

            app.UseProblemDetails();

            app.UseHttpsRedirection();

            app.UseStaticFiles();

            app.UseRouting();

            app.UseCors("LocalCors");

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
