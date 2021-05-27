using SideLine.Helpers;
using SideLine.Models.Entity;
using SideLine.Models.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers.Account
{
    public class AreaRiservataController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            var utente = (Utenti)Session["UtenteLoggato"];
            if (utente == null)
                return RedirectToAction("Login", "Account");
            var model = new ProfiloViewModel();
            SetProfiloViewModelLabels(model);
            model.Utente = utente;
            return View(model);
        }

        private void SetProfiloViewModelLabels(ProfiloViewModel model)
        {
            ViewBag.Title = model.LabelTitolo = "Profilo";
            model.LabelConfermaPassword = "Conferma password";
            model.LabelEmail = "Indirizzo mail";
            model.LabelNome = "Nickname";
            model.LabelPassword = "Password";
            model.LabelSquadra = "Squadra preferita";
            model.BtnAggiorna = "Aggiorna";
        }
        [HttpPost]
        public ActionResult Index(ProfiloViewModel model)
        {
            DatabaseHelper.UpdatePassword(model.Utente.Id, model.Password);
            SetProfiloViewModelLabels(model);
            return View(model);
        }
    }
}