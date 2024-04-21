using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p4
{
    class GreutateaIdeala
    {
        public double Inaltime { set; get; }
        public double Varsta { set; get; }
        public char Sex { set; get; }
        private double greutateIdealaBarbati()
        { 
            return (Inaltime - 100D - ((Inaltime - 150D) / 4D)) + ((Varsta - 20D) / 4D); 
        }
        private double greutateIdealaFemei()
        { 
            return (Inaltime - 100D - ((Inaltime - 150D) / 2.5D)) + ((Varsta - 20D) / 6D); 
        }
        public void afisareGreutate()
        {
            if (Sex == 'm')
            { 
                Console.WriteLine("Greutatea ideala a acestui barbat este: " + greutateIdealaBarbati()); 
            }
            else
            { 
                Console.WriteLine("Greutatea ideala a acestei femei este: " + greutateIdealaFemei()); 
            }
        }
    }
}
