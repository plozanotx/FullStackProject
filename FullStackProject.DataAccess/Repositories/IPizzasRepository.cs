using FullStackProject.DataAccess.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace FullStackProject.DataAccess.Repositories
{
    public interface IPizzasRepository
    {
        Task<Pizza> GetPizzaAsync(int id);

        Task<Pizza> GetPizzaAsync(string name);

        Task<IEnumerable<Pizza>> GetPizzasAsync();

        Task<bool> SaveUpdatePizzaAsync(Pizza pizza);

        Task<bool> DeletePizzaAsync(Pizza pizza);
    }
}
