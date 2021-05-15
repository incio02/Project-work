using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers.motogp
{
    public class MotogpController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Circuito(int id)
        {
            return View();
        }
        [HttpGet]
        public ActionResult Scuderia(int id)
        {
            return View();
        }
    }
}
