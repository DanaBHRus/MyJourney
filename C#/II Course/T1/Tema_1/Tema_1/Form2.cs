using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Tema_1
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked)
                toolStripProgressBar2.Value += 25;
            else
                toolStripProgressBar2.Value -= 25;
        }

        private void toolStripProgressBar2_Click(object sender, EventArgs e)
        {
            if (toolStripProgressBar2.Value == 100)
                MessageBox.Show("Felicitari, ai castigat!");
        }

        private void radioButton6_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton6.Checked)
                toolStripProgressBar2.Value += 25;
            else
                toolStripProgressBar2.Value -= 25;
        }

        private void radioButton8_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton8.Checked)
                toolStripProgressBar2.Value += 25;
            else
                toolStripProgressBar2.Value -= 25;
        }

        private void radioButton10_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton10.Checked)
                toolStripProgressBar2.Value += 25;
            else
                toolStripProgressBar2.Value -= 25;
        }

    }
}
