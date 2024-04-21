using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p5
{
    class CalculatorMedii
    {
        public List<int> Numbers {get; set;}
        public double medieAritmetica()
        {
            if (Numbers.Count == 0)
                return 5.0e-324D;
            double sum = 0;
            foreach (int number in Numbers)
            {
                sum = sum + number;
            }
            return sum / Numbers.Count;
        }
        public double medieGeometrica()
        {
            if (Numbers.Count == 0)
                return 5.0e-324D;
            double prod = 1;
            foreach (int number in Numbers)
            {
                prod = prod * number;
            }
            return Math.Pow(prod, 1D / Numbers.Count);
        }
    }
}
