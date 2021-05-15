using SideLine.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Views
{
    public class SquadraView
    {
        public Società_sportiva Societa { get; set; }
        public Città Citta { get; set; }
        public Membri Membri { get; set; }
        public string MessaggioErrore { get; set; }
    }
}