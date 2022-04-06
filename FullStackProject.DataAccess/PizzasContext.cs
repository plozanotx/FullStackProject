using FullStackProject.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;

namespace FullStackProject.DataAccess
{
    public class PizzasContext : DbContext
    {
        private readonly string sqlServerConnectionString;

        public DbSet<Pizza> Pizzas { get; set; }

        public PizzasContext(IConfiguration configuration)
        {
            this.sqlServerConnectionString = configuration.GetConnectionString("PizzasConnectionString");
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(this.sqlServerConnectionString);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
