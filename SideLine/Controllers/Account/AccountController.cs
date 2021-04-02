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
            SetSignUpViewModelLabels(model);
            return View(model);
        }
        private void SetSignUpViewModelLabels(SignUpViewModel model)
        {
            ViewBag.Title = model.LabelTitolo = "Registrazione";
            model.LabelConfermaPassword = "Conferma password";
            model.LabelEmail = "Indirizzo Email";
            model.LabelNome = "Nome";
            model.LabelCognome = "Cognome";
            model.LabelPassword = "Password";
            model.LabelSesso = "Sesso";
            model.LabelDataNascita = "Data di nascita";
            model.BtnRegistrazione = "Registrati";
            model.LabelPrivacy = "Accetta la privacy/n";
            model.LabelSport = "Sport preferito";
            model.LabelSquadra = "Squadra preferita";
        }
        [HttpPost]
        public ActionResult SignUp(SignUpViewModel model)
        {
            ModelState.Remove("Utente.password");

            SetSignUpViewModelLabels(model);
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
                    model.Messaggio = "Questa Email è già esistente nel database";
                    model.IsSuccesso = false;
                    return View(model);
                }
                var id = DatabaseHelper.InsertUtente(model.Utente);
                if (id > 0)
                {
                    model.Utente.Password = CryptoHelper.AshSHA256(id+ model.Password);
                    bool result = DatabaseHelper.UpdatePassword(id, model.Utente.Password);
                    if (result)
                    {

                    }
                }
            }

            else
            {
                model.Messaggio = "Completa correttamente tutti i campi";
                foreach (var value in ModelState.Values)
                {
                    foreach (var error in value.Errors)
                    {
                        model.Messaggio += "<br> " + error.ErrorMessage;
                    }
                }
                model.IsSuccesso = false;
            }
            return View(model);
        }
    }
}