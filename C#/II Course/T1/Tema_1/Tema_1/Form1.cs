using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace Tema_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            pictureBox1.Image = null;
            switch (comboBox1.SelectedIndex)
            {
                case 0:
                    pictureBox1.Image = Image.FromFile("image_1");
                    break;
                case 1:
                    pictureBox1.Image = Image.FromFile("image_2");
                    break;
                case 2:
                    pictureBox1.Image = Image.FromFile("image_3");
                    break;
                case 3:
                    pictureBox1.Image = Image.FromFile("image_4");
                    break;
                case 4:
                    pictureBox1.Image = Image.FromFile("image_5");
                    break;
                case 5:
                    pictureBox1.Image = Image.FromFile("image_6");
                    break;
                case 6:
                    pictureBox1.Image = Image.FromFile("image_7");
                    break;
                default:
                    MessageBox.Show("Nu ati selectat nicio optiune");
                    break;
            }
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                richTextBox1.Text = "";
                StreamReader streamReader = new StreamReader(path: "radioButton1.txt");
                {
                    string line = string.Empty;
                    while ((line = streamReader.ReadLine()) != null)
                    {
                        richTextBox1.Text += line;
                    }
                }
                streamReader.Close();
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                richTextBox1.Text = "";
                StreamReader streamReader = new StreamReader(path: "radioButton2.txt");
                {
                    string line = string.Empty;
                    while ((line = streamReader.ReadLine()) != null)
                    {
                        richTextBox1.Text += line;
                    }
                }
                streamReader.Close();
            }
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked)
            {
                richTextBox1.Text = "";
                StreamReader streamReader = new StreamReader(path: "radioButton3.txt");
                {
                    string line = string.Empty;
                    while ((line = streamReader.ReadLine()) != null)
                    {
                        richTextBox1.Text += line;
                    }
                }
                streamReader.Close();
            }
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton4.Checked)
            {
                richTextBox1.Text = "";
                StreamReader streamReader = new StreamReader(path: "radioButton4.txt");
                {
                    string line = string.Empty;
                    while ((line = streamReader.ReadLine()) != null)
                    {
                        richTextBox1.Text += line;
                    }
                }
                streamReader.Close();
            }
        }

        private void radioButton5_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton5.Checked)
            {
                richTextBox1.Text = "";
                StreamReader streamReader = new StreamReader(path: "radioButton5.txt");
                {
                    string line = string.Empty;
                    while ((line = streamReader.ReadLine()) != null)
                    {
                        richTextBox1.Text += line;
                    }
                }
                streamReader.Close();
            }
        }

        private void radioButton6_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton6.Checked)
            {
                richTextBox1.Text = "";
                StreamReader streamReader = new StreamReader(path: "radioButton6.txt");
                {
                    string line = string.Empty;
                    while ((line = streamReader.ReadLine()) != null)
                    {
                        richTextBox1.Text += line;
                    }
                }
                streamReader.Close();
            }
        }

        private void radioButton7_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton7.Checked)
            {
                richTextBox1.Text = "";
                StreamReader streamReader = new StreamReader(path: "radioButton7.txt");
                {
                    string line = string.Empty;
                    while ((line = streamReader.ReadLine()) != null)
                    {
                        richTextBox1.Text += line;
                    }
                }
                streamReader.Close();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();
            form2.Show();
        }
    }
}
