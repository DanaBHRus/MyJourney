using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace L2_p2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter("list.txt", true);
            streamWriter.WriteLine("A B C D E F");
            streamWriter.Close();

            StreamReader streamReader = new StreamReader(path: "list.txt");
            {
                string line = string.Empty;
                while ((line = streamReader.ReadLine()) != null)
                {
                    string[] array = line.Split(' ');
                    foreach (string arrayElement in array)
                    {
                        listBox1.Items.Add(arrayElement);
                    }
                }
            }
            streamReader.Close();

            File.WriteAllText("list.txt", string.Empty);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            foreach (object item in listBox1.Items)
            {
                listBox2.Items.Add(item);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            listBox2.Items.Clear();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
