using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p2
{
    class OperatiiMatematice
    {
        private float number1;
        private float number2;
        private float number3;
        private char sign;
        public OperatiiMatematice(float number1, float number2)
        {
            this.number1 = number1;
            this.number2 = number2;
        }
        public void adunare()
        {
            this.number3 = this.number1 + this.number2;
            this.sign = '+';
        }
        public void scadere()
        {
            this.number3 = this.number1 - this.number2;
            this.sign = '-';
        }
        public void inmultire()
        {
            this.number3 = this.number1 * this.number2;
            this.sign = '*';
        }
        public void impartire()
        {
            if (this.number2 == 0)
                this.number3 = 3.4E-38F;
            else
                this.number3 = number1 / number2;
            this.sign = '/';
        }
        public void afisare()
        {
            if (this.number3 == 3.4E-38F)
                Console.WriteLine("Impartirea nu s-a putut realiza");
            else
                Console.WriteLine(this.number1 + " " + this.sign + " " + this.number2 + " = " + this.number3);
        }
    }
}
