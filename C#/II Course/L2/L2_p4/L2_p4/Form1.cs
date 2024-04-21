using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace L2_p4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

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
                    break;
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void tabPage2_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                if (radioButton5.Checked)
                    MessageBox.Show(radioButton1.Text + " din " + radioButton5.Text);
                else
                    if (radioButton6.Checked)
                        MessageBox.Show(radioButton1.Text + " din " + radioButton6.Text);
            }
        }

        private void radioButton5_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton5.Checked)
            {
                if (radioButton1.Checked)
                    MessageBox.Show(radioButton1.Text + " din " + radioButton5.Text);
                else
                    if (radioButton2.Checked)
                        MessageBox.Show(radioButton2.Text + " din " + radioButton5.Text);
                    else
                        if (radioButton3.Checked)
                            MessageBox.Show(radioButton3.Text + " din " + radioButton5.Text);
                        else
                            if (radioButton4.Checked)
                                MessageBox.Show(radioButton4.Text + " din " + radioButton5.Text);
                            else
                                MessageBox.Show("Informatii insuficiente.");
            }
        }

        private void radioButton6_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton6.Checked)
            {
                if (radioButton1.Checked)
                    MessageBox.Show(radioButton1.Text + " din " + radioButton6.Text);
                else
                    if (radioButton2.Checked)
                        MessageBox.Show(radioButton2.Text + " din " + radioButton6.Text);
                    else
                        if (radioButton3.Checked)
                            MessageBox.Show(radioButton3.Text + " din " + radioButton6.Text);
                        else
                            if (radioButton4.Checked)
                                MessageBox.Show(radioButton4.Text + " din " + radioButton6.Text);
                            else
                                MessageBox.Show("Informatii insuficiente.");
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                if (radioButton5.Checked)
                    MessageBox.Show(radioButton2.Text + " din " + radioButton5.Text);
                else
                    if (radioButton6.Checked)
                        MessageBox.Show(radioButton2.Text + " din " + radioButton6.Text);
            }
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked)
            {
                if (radioButton5.Checked)
                    MessageBox.Show(radioButton3.Text + " din " + radioButton5.Text);
                else
                    if (radioButton6.Checked)
                        MessageBox.Show(radioButton3.Text + " din " + radioButton6.Text);
            }
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton4.Checked)
            {
                if (radioButton5.Checked)
                    MessageBox.Show(radioButton4.Text + " din " + radioButton5.Text);
                else
                    if (radioButton6.Checked)
                        MessageBox.Show(radioButton4.Text + " din " + radioButton6.Text);
            }
        }
    }
}
