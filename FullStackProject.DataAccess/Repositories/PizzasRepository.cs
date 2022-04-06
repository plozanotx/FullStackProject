using FullStackProject.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FullStackProject.DataAccess.Repositories
{
    public class PizzasRepository : IPizzasRepository
    {
        private readonly PizzasContext pizzasContext;

        public PizzasRepository(PizzasContext pizzasContext)
        {
            this.pizzasContext = pizzasContext;
        }

        public async Task<bool> DeletePizzaAsync(Pizza pizza)
        {
            this.pizzasContext.Pizzas.Remove(pizza);

            return (await this.pizzasContext.SaveChangesAsync()) > 0;
        }

        public async Task<Pizza> GetPizzaAsync(int id)
        {
            return await this.pizzasContext.Pizzas.SingleOrDefaultAsync(p => p.Id == id);
        }

        public async Task<Pizza> GetPizzaAsync(string name)
        {
            return await this.pizzasContext.Pizzas.SingleOrDefaultAsync(p => p.Name == name);
        }

        public async Task<IEnumerable<Pizza>> GetPizzasAsync()
        {
            return await this.pizzasContext.Pizzas.ToArrayAsync();
        }

        public async Task<bool> SaveUpdatePizzaAsync(Pizza pizza)
        {
            if (pizza.Id == default)
            {
                this.pizzasContext.Pizzas.Add(pizza);
            }
            else
            {
                this.pizzasContext.Pizzas.Update(pizza);
            }

            return (await this.pizzasContext.SaveChangesAsync()) > 0;
        }
    }
}
