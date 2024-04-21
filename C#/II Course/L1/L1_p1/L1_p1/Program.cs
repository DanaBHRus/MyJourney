using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p1
{
    class Program
    {
        static void Main(string[] args)
        {
            Fibonacci fibonacci1 = new Fibonacci(0);
            fibonacci1.afisareFibonacci();
            Fibonacci fibonacci2 = new Fibonacci(1);
            fibonacci2.afisareFibonacci();
            Fibonacci fibonacci3 = new Fibonacci(5);
            fibonacci3.afisareFibonacci();
            Console.ReadKey();
        }
    }
}
