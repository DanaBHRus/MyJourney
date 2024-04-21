using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Introduceti-va inaltimea in centimetri");
            string input = Console.ReadLine();
            double inaltime;
            if (double.TryParse(input, out inaltime))
            {
                Console.WriteLine("Introduceti-va varsta in ani");
                input = Console.ReadLine();
                double varsta;
                if (double.TryParse(input, out varsta))
                {
                    Console.WriteLine("Introduceti-va sexul - m pentru barbati, f pentru femei");
                    input = Console.ReadLine();
                    char sex;
                    if (char.TryParse(input, out sex))
                    {
                        if (sex == 'm' || sex == 'f')
                        {
                            GreutateaIdeala greutateaIdeala = new GreutateaIdeala();
                            greutateaIdeala.Inaltime = inaltime;
                            greutateaIdeala.Varsta = varsta;
                            greutateaIdeala.Sex = sex;
                            greutateaIdeala.afisareGreutate();
                        }
                        else
                        {
                            Console.WriteLine("Nu a fost introdus corespunzator.");
                        }
                    }
                    else
                    {
                        Console.WriteLine("Nu a fost introdus corespunzator.");
                    }
                }
                else
                {
                    Console.WriteLine("Nu a fost introdusa o valoare numerica.");
                }
            }
            else
            {
                Console.WriteLine("Nu a fost introdusa o valoare numerica.");
            }
            Console.ReadKey();
        } 
    } 
}
