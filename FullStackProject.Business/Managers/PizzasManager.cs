using FullStackProject.Business.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using db = FullStackProject.DataAccess;

namespace FullStackProject.Business.Managers
{
    public class PizzasManager : IPizzasManager
    {
        private readonly db.Repositories.IPizzasRepository pizzasRepository;

        public PizzasManager(db.Repositories.IPizzasRepository pizzasRepository)
        {
            this.pizzasRepository = pizzasRepository;
        }

        public async Task<IEnumerable<Pizza>> GetPizzasAsync()
        {
            var dbPizzas = await this.pizzasRepository.GetPizzasAsync();

            return dbPizzas.Select(p => MapToPizza(p)).ToArray();
        }

        private Pizza MapToPizza(db.Entities.Pizza pizza)
        {
            return new Pizza
            {
                Id = pizza.Id,
                Name = pizza.Name,
                Description = pizza.Description,
                RetailPrice = pizza.RetailPrice
            };
        }
    }
}
