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
        public ActionResult Campionato(int id)
        {
            id = 1;
            return View(id);
        }
        [HttpGet]
        public ActionResult Squadra(int id)
        {
            return View();
        }
    }
}