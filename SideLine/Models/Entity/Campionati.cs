using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Entity
{
    public class Campionati
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Nazione { get; set; }
        public int FK_Sport { get; set; }
    }
}