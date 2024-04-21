using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p1
{
    class Fibonacci
    {
        private int numarElemente;
        public Fibonacci(int numarElemente)
        {
            this.numarElemente = numarElemente;
        }
        public void afisareFibonacci()
        {
            int f0 = 0, f1 = 1, f2;
            switch(this.numarElemente)
            {
                case 0:
                    Console.WriteLine("Nu se genereaza niciun element");
                    break;
                case 1:
                    Console.WriteLine(f1);
                    break;
                default:
                    Console.Write(f1 + " ");
                    int i;
                    for (i = 1; i < this.numarElemente; i++)
                    {
                        f2 = f0 + f1;
                        Console.Write(f2 + " ");
                        f0 = f1;
                        f1 = f2;
                    }
                    Console.WriteLine();
                    break;
            }
        }
    }
}
