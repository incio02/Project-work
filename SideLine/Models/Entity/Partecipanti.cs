using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Entity
{
    public class Partecipanti
    {
        public int Id { get; set; }
        public string Piazzamento { get; set; }
        public string Risultato { get; set; }
        public string FK_Società_sportiva { get; set; }
        public int FK_Eventi_Sportivi { get; set; }
    }
}