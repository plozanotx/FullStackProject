using FullStackProject.Business.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace FullStackProject.Business.Managers
{
    public interface IPizzasManager
    {
        Task<IEnumerable<Pizza>> GetPizzasAsync();
    }
}
