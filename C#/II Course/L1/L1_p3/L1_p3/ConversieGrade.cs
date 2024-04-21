using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace L1_p3
{
    class ConversieGrade
    {
        public double Grade { get; set; }
        public double dinCInF()
        {
            return Grade * 9 / 5 + 32;
        }
        public double dinFinC()
        {
            return (Grade - 32) * 5 / 9;
        }
    }
}
