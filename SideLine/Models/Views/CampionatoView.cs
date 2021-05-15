using SideLine.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Views
{
    public class CampionatoView
    {
        public Campionati Campionati { get; set; }
        public string MessaggioErrore { get; set; }
        public Classifica Classifica { get; set; }
        public Società_sportiva Società { get; set; }
    }
}