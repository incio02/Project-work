using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Models.Entity
{
    public class Società_sportiva
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int FK_Citta { get; set; }
    }
}