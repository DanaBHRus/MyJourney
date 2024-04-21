using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Introduceti primul număr real:");
            string input1 = Console.ReadLine();
            float number1;
            if (float.TryParse(input1, out number1))
            {
                Console.WriteLine("Introduceti al doilea număr real:");
                string input2 = Console.ReadLine();
                float number2;
                if (float.TryParse(input2, out number2))
                {
                    OperatiiMatematice operatiiMatematice = new OperatiiMatematice(number1, number2);
                    operatiiMatematice.adunare();
                    operatiiMatematice.afisare();
                    operatiiMatematice.scadere();
                    operatiiMatematice.afisare();
                    operatiiMatematice.inmultire();
                    operatiiMatematice.afisare();
                    operatiiMatematice.impartire();
                    operatiiMatematice.afisare();
                }
                else
                {
                    Console.WriteLine("Al doilea număr introdus nu este valid.");
                }
            }
            else
            {
                Console.WriteLine("Primul număr introdus nu este valid.");
            }
            Console.ReadKey();
        }
    }
}