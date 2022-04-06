using FullStackProject.Business.Managers;
using FullStackProject.Business.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace FullStackProject.Backend.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PizzasController : ControllerBase
    {
        private readonly IPizzasManager pizzasManager;

        public PizzasController(IPizzasManager pizzasManager)
        {
            this.pizzasManager = pizzasManager;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Pizza>>> GetPizzas()
        {
            try
            {
                var results = await this.pizzasManager.GetPizzasAsync();

                if (results == null || !results.Any())
                {
                    return NotFound();
                }

                return Ok(results);
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }
    }
}
