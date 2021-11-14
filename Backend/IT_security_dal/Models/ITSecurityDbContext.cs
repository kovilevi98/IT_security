using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace IT_security_dal.Models
{
    public class ITSecurityDbContext : IdentityDbContext<ApplicationUser>
    {
        public DbSet<Caff> Caffs { get; set; }

        public DbSet<Comment> Comments { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

        public ITSecurityDbContext(DbContextOptions<ITSecurityDbContext> options)
            : base(options)
        {
        }

        public ITSecurityDbContext()
        {

        }

    }
}
