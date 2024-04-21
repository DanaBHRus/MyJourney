using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p3
{
    class Program
    {
        static void Main(string[] args)
        {
            ConversieGrade conversieGrade = new ConversieGrade();
            string input;
            int caz;
            double temperaturaData;
            do
            {
                Console.WriteLine("0 - Programul isi inceteaza executia");
                Console.WriteLine("1 - Conversie din grade Celsius in grade Fahrenheit");
                Console.WriteLine("2 - Conversie din grade Fahrenheit in grade Celsius");
                input = Console.ReadLine();
                if (int.TryParse(input, out caz))
                {
                    switch (caz)
                    {
                        case 0:
                            Console.WriteLine("Va asteptam sa mai reveniti!");
                            break;
                        case 1:
                            Console.WriteLine("Introduceti un numar real reprezentand temperatura in grade Celsius: ");
                            input = Console.ReadLine();
                            if (double.TryParse(input, out temperaturaData))
                            {
                                conversieGrade.Grade = temperaturaData;
                                Console.WriteLine("Temperatura in grade Fahrenheit este: " + conversieGrade.dinCInF());
                            }
                            else
                            {
                                Console.WriteLine("Trebuia sa introduceti un numar real.");
                            }
                            break;
                        case 2:
                            Console.WriteLine("Introduceti un numar real reprezentand temperatura in grade Fahrenheit: ");
                            input = Console.ReadLine();
                            if (double.TryParse(input, out temperaturaData))
                            {
                                conversieGrade.Grade = temperaturaData;
                                Console.WriteLine("Temperatura in grade Celsius este: " + conversieGrade.dinFinC());
                            }
                            else
                            {
                                Console.WriteLine("Trebuia sa introduceti un numar real.");
                            }
                            break;
                        default:
                            Console.WriteLine("Numarul trebuie sa fie cuprins intre 0 si 2.");
                            break;
                    }
                }
                else
                {
                    Console.WriteLine("Trebuia sa introduceti un numar natural.");
                }
            } while(caz != 0);
            Console.ReadKey();
        }
    }
}
