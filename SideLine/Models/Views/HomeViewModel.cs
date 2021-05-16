using SideLine.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Views
{
    public class HomeViewModel
    {
        public List<Classifica> Classifica { get; set; }
        public Società_sportiva Squadra { get; set; }
    }
}