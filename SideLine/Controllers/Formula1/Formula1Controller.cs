using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers.Formula1
{
    public class Formula1Controller : Controller
    {
        [HttpGet]
        public ActionResult Team()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Ferrari()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Mercedes()
        {
            return View();
        }

        [HttpGet]
        public ActionResult RedBull()
        {
            return View();
        }

        [HttpGet]
        public ActionResult McLaren()
        {
            return View();
        }

        [HttpGet]
        public ActionResult AstonMartin()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Alpine()
        {
            return View();
        }

        [HttpGet]
        public ActionResult AlfaRomeo()
        {
            return View();
        }

        [HttpGet]
        public ActionResult AlphaTauri()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Haas()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Williams()
        {
            return View();
        }
    }
}