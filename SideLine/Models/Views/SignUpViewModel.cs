using SideLine.Models.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SideLine.Models.Views
{
    public class SignUpViewModel
    {
        
        public string LabelTitolo { get; set; }
        public string LabelNome { get; set; }
        public string LabelCognome { get; set; }
        public string LabelEmail { get; set; }
        public string LabelPassword { get; set; }
        public string LabelConfermaPassword { get; set; }
        public string LabelSesso { get; set; }
        public string LabelSport { get; set; }
        public string LabelSquadra { get; set; }
        public string LabelPrivacy { get; set; }
        public string BtnRegistrazione { get; set; }
        public string Messaggio { get; set; }
        public bool IsSuccesso { get; set; }
        public Utenti Utente { get; set; }
        [Required]
        public string Password { get; set; }
        [Compare(nameof(Password), ErrorMessage = "Le password non coincidono")]
        public string ConfermaPassword { get; set; }
       
    
    }
}