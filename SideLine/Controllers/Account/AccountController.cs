using SideLine.Helpers;
using SideLine.Models.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SideLine.Controllers
{
    public class AccountController : Controller
    {
        [HttpGet]
        public ActionResult SignUp()
        {
            var model = new SignUpViewModel();
            SetLabels(model);
            return View(model);
        }
        private void SetLabels(SignUpViewModel model)
        {
            ViewBag.Title = model.LabelTitolo = "Registrazione";
            model.LabelConfermaPassword = "Conferma password";
            model.LabelEmail = "Indirizzo Email";
            model.LabelNome = "Nome";
            model.LabelCognome = "Cognome";
            model.LabelPassword = "Password";
            model.LabelSesso = "Sesso";
            model.BtnRegistrazione = "Registrati";
            model.LabelPrivacy = "Accetta la privacy";
            model.LabelSport = "Sport preferito";
            model.LabelSquadra = "Squadra preferita";
        }
        [HttpPost]
        public ActionResult SignUp(SignUpViewModel model)
        {
            ModelState.Remove("Utente.password");

            SetLabels(model);
            if (ModelState.IsValid)
            {
                if (model.Utente.Privacy == false)
                {
                    model.Messaggio = "E' neccessario accettare la privacy";
                    model.IsSuccesso = false;
                    return View(model);
                }

                if (DatabaseHelper.ExistUtenteByEmail(model.Utente.Email))
                {
                    model.Messaggio = "Questa Email è già esistente nel database. Recupera la password";
                    model.IsSuccesso = false;
                    return View(model);
                }
                model.Utente.Password = model.Password;
                var id = DatabaseHelper.InsertUtente(model.Utente);
                if (id == 0)
                {
                    model.Messaggio = "Errore del server";
                }
                model.Messaggio = "Registrazione avvenuta con successo";
             
            }

            else
            {
                model.Messaggio = "Completa correttamente tutti i campi<br>";
                foreach (var value in ModelState.Values)
                {
                    foreach (var error in value.Errors)
                    {
                        model.Messaggio += $"{error.ErrorMessage}<br>";
                    }
                }
                model.IsSuccesso = false;
            }
            return View(model);
        }
        [HttpGet]
        public ActionResult Login()
        {
            var model = new LoginViewModel();
            SetLoginViewModelLabels(model);
            return View(model);
        }

        [HttpPost]
        public ActionResult Login(LoginViewModel model)
        {
            SetLoginViewModelLabels(model);
            if (!ModelState.IsValid)
                return View(model);
            var utente = DatabaseHelper.GetUtenteByEmail(model.Email);
            if (utente == null ||  model.Password != utente.Password)
            {
                model.MessaggioErrore = "Email e password non coincidono";
                return View(model);
            }


            Session["UtenteLoggato"] = utente;
            return RedirectToAction("Index", "AreaRiservata");
        }


        private void SetLoginViewModelLabels(LoginViewModel model)
        {
            ViewBag.Title = model.LabelTitoloLogin = "Login";
            model.LabelEmail = "Indirizzo mail";
            model.LabelPassword = "Password";
            model.LabelButtonInvia = "Entra";
        }
    }
}