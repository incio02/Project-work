using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers.calcio
{
    public class CalcioController : Controller
    {
        // GET: Calcio
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult SerieA()
        {
            return View();
        }

        [HttpGet]
        public ActionResult SerieB()
        {
            return View();
        }

        [HttpGet]
        public ActionResult PremierLeague()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Bundesliga()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Ligue1()
        {
            return View();
        }

        [HttpGet]
        public ActionResult LaLiga()
        {
            return View();
        }

        [HttpGet]
        public ActionResult ChampionsLeague()
        {
            return View();
        }

        [HttpGet]
        public ActionResult EuropaLeague()
        {
            return View();
        }
    }
}