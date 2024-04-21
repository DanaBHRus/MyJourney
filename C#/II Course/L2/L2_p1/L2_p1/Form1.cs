using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace L2_p1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter("login.txt", true);
            streamWriter.WriteLine("rusdbh16 *******");
            streamWriter.Close();

            StreamReader streamReader = new StreamReader(path: "login.txt");
            {
                string line = string.Empty;
                while ((line = streamReader.ReadLine()) != null)
                {
                    string[] array = line.Split(' ');
                    textBox1.Text = array[0];
                    textBox2.Text = array[1];
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();
            form2.Show();
        }
    }
}
