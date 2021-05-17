using SideLine.Helpers;
using SideLine.Models.Entity;
using SideLine.Models.Views;
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
        public ActionResult Campionato(int id)
        {
            var campionato = DatabaseHelper.GetCampionatoById(id);
            List<Classifica> classifica = DatabaseHelper.GetClassifica(id);
            List<Società_sportiva> squadra = DatabaseHelper.GetSquadre(id);
            var model = new CampionatoViewModel()
            {
                Campionato = campionato,
                Classifica = classifica,
                Squadre = squadra
            };
            if (campionato == null || classifica == null || squadra == null)
            {
                model.MessaggioErrore = "Il campionato non è disponibile";
                ViewBag.Title = "Errore";
            }
            else
            {
                ViewBag.Title = campionato.Nome;
            }
            return View(model);
        }
    }
}
