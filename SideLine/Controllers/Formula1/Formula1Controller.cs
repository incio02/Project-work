﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers.Formula1
{
    public class Formula1Controller : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        
        [HttpGet]
        public ActionResult Circuiti()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Team()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Campionato()
        {
            return View();
        }
    }
}
