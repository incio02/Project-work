using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers.Basket
{
    public class BasketController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Campionato(int id)
        {
            return View();
        }
        [HttpGet]
        public ActionResult Squadra(int id)
        {
            return View();
        }
    }
}