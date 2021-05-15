using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Entity
{
    public class Classifica
    {
        public int Id { get; set; }
        public int Posizione_classifica { get; set; }
        public int Punteggio{ get; set; }
        public int Giocate { get; set; }
        public int Vinte { get; set; }
        public int Pareggiate { get; set; }
        public int Persi { get; set; }
        public int Punti_segnati { get; set; }
        public int Punti_subiti{ get; set; }
        public int Differenza_reti { get; set; }
        public int FK_Campionati { get; set; }
        public int FK_Società_Sportiva { get; set; }

    }
}