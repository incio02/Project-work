using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SideLine.Models.Entity
{
    public class Utenti
    {
        public int Id { get; set; }
        [Required]
        public string Nome { get; set; }
        [Required]
        public string Cognome { get; set; }
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
        public string Sesso { get; set; }
        public string FK_Societa_Sportiva { get; set; }
        [Range(typeof(bool), "true", "true", ErrorMessage = "Per registrarsi bisogna accettare la privacy")]
        public bool Privacy { get; set; }
    }
   
}