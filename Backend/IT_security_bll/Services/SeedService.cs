using IT_security_common.Enums;
using IT_security_dal.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IT_security_bll.Services
{
    public class SeedService
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly ITSecurityDbContext _context;

        public SeedService(
            UserManager<ApplicationUser> userManager,
            RoleManager<IdentityRole> roleManager,
            ITSecurityDbContext context)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _context = context;
        }

        private static List<string> GetRoles()
        {
            return new List<string>
            {
                "User",
                "Admin"
            };
        }

        public async Task SeedRoles()
        {
            foreach (var roleName in GetRoles())
            {
                var roleExists = await _roleManager.RoleExistsAsync(roleName);
                if (!roleExists)
                {
                    await _roleManager.CreateAsync(new IdentityRole(roleName));
                }
            }
        }

        public async Task SeedUsers()
        {
            if (!await _context.Users.AnyAsync())
            {
                var admin = new ApplicationUser
                {
                    Email = "admin@test.hu",
                    UserName = "admin@test.hu",
                    FirstName = "ITSEC",
                    LastName = "Admin",
                    EmailConfirmed = true,
                };

                await _userManager.CreateAsync(admin, "passWORD123!");
                await _userManager.AddToRoleAsync(admin, UserTypeEnum.Admin.ToString());
                await _context.SaveChangesAsync();

                var user = new ApplicationUser
                {
                    Email = "user@test.hu",
                    UserName = "user@test.hu",
                    FirstName = "Bob",
                    LastName = "User",
                    EmailConfirmed = true,
                };

                await _userManager.CreateAsync(user, "passWORD123!");
                await _userManager.AddToRoleAsync(user, UserTypeEnum.User.ToString());
                await _context.SaveChangesAsync();
            }
        }
    }
}
