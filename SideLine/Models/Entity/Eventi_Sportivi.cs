using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models
{
    public class Eventi_Sportivi
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Luogo { get; set; }
        public int N_giornata { get; set; }
    }
}