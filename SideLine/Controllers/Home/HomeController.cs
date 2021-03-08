using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers.Home
{
    public class HomeController : Controller
    {
        // GET: Home
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Calcio()
        {
            return View();
        }
        public ActionResult Basket()
        {
            return View();
        }
        public ActionResult Formula1()
        {
            return View();
        }
        public ActionResult MotoGp()
        {
            return View();
        }
    }
}