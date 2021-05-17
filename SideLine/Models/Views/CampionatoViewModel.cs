using SideLine.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Views
{
    public class CampionatoViewModel
    {
        public Campionati Campionato { get; set; }
        public string MessaggioErrore { get; set; }
        public List<Classifica> Classifica { get; set; }
        public List<Società_sportiva> Squadre { get; set; }
    }
}