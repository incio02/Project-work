using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SideLine.Helpers
{
    public class PathHelper
    {
        public static string GetProdottoUrlCalcio(int id)
        {
            return $"/calcio/campionato/{id}";
        }
        public static string GetProdottoUrlBasket(int id)
        {
            return $"/basket/campionato/{id}";
        }
        public static string GetProdottoUrlFormula1(int id)
        {
            return $"/formula1/campionato/{id}";
        }
        public static string GetProdottoUrlMotoGp(int id)
        {
            return $"/motogp/campionato/{id}";
        }
    }
}