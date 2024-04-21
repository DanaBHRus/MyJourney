using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p5
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Introduceti numere intregi, separate printr-un spatiu:");
            string input = Console.ReadLine();
            string[] numbersString = input.Split(' ');
            List<int> numbers = new List<int>();
            int number;
            foreach (string numberString in numbersString)
            {
                if (int.TryParse(numberString, out number))
                {
                    numbers.Add(number);
                }
                else
                {
                    Console.WriteLine(numberString + " nu este un numar intreg");
                }
            }
            CalculatorMedii calculatorMedii = new CalculatorMedii();
            calculatorMedii.Numbers = numbers;
            double mediaArirmetica = calculatorMedii.medieAritmetica();
            double mediaGeometrica = calculatorMedii.medieGeometrica();
            if(mediaArirmetica == 5.0e-324D)
            {
                Console.WriteLine("Nu a fost introdus niciun numar.");
            }
            else
            {
                Console.WriteLine("Media aritmetica este " + mediaArirmetica + " , iar media geometrica este " + mediaGeometrica);
            }
            Console.ReadKey();
        }
    }
}
