using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Entity
{
    public class Membri
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Cognome { get; set; }
        public string Ruolo { get; set; }
        public string Numero { get; set; }
        public string Nazionalità { get; set; }
        public string FK_Società_Sportiva { get; set; }
    }
}