using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Atestat_Dana_FORSTY_2
{

    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'atestat_2DataSet.Teste' table. You can move, or remove it, as needed.
            this.testeTableAdapter.Fill(this.atestat_2DataSet.Teste);
            // TODO: This line of code loads data into the 'atestat_2DataSet.Lectii' table. You can move, or remove it, as needed.
            this.lectiiTableAdapter.Fill(this.atestat_2DataSet.Lectii);
            // TODO: This line of code loads data into the 'atestat_2DataSet.Elevi' table. You can move, or remove it, as needed.
            this.eleviTableAdapter.Fill(this.atestat_2DataSet.Elevi);
            atestat_2DataSet.EnforceConstraints = false;
        }

        private void eLEVIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl1.SelectedTab = tabPage1;
        }

        private void lECȚIIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl1.SelectedTab = tabPage2;
        }

        private void tESTEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl1.SelectedTab = tabPage3;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";
            if (comboBox1.SelectedItem == null)
                richTextBox1.Text = "Selectați o opțiune validă.";
            else
                if (comboBox1.SelectedItem.ToString() == "Afișare elevi")
                {
                    eleviTableAdapter.afisare_elevi(atestat_2DataSet.Elevi);
                    DataTable dt = atestat_2DataSet.Elevi;
                    int i;
                    for (i = 0; i < dt.Rows.Count; i++)
                        richTextBox1.Text += dt.Rows[i]["nume"].ToString() + dt.Rows[i]["prenume"] + dt.Rows[i]["clasa"] + " " + dt.Rows[i]["scoala"] + '\n';
                }
                else
                    if (comboBox1.SelectedItem.ToString() == "Afișare elevi pe școală și pe clasă")
                    {
                        eleviTableAdapter.afisare_elevi_pe_scoala_si_clasa(atestat_2DataSet.Elevi);
                        DataTable dt = atestat_2DataSet.Elevi;
                        int i;
                        for (i = 0; i < dt.Rows.Count; i++)
                            richTextBox1.Text += dt.Rows[i]["nume"].ToString() + dt.Rows[i]["prenume"] + dt.Rows[i]["scoala"] + dt.Rows[i]["clasa"] + '\n';
                    }
                    else
                        if (comboBox1.SelectedItem.ToString() == "Număr elevi pe clasă")
                        {
                            eleviTableAdapter.numar_elevi_pe_clasa(atestat_2DataSet.Elevi);
                            DataTable dt = atestat_2DataSet.Elevi;
                            int i;
                            for (i = 0; i < dt.Rows.Count; i++)
                                richTextBox1.Text += dt.Rows[i]["numar_elevi"].ToString() + " " + dt.Rows[i]["clasa"] + '\n';
                        }
                        else
                            if (comboBox1.SelectedItem.ToString() == "Număr elevi pe școală")
                            {
                                eleviTableAdapter.numar_elevi_pe_scoala(atestat_2DataSet.Elevi);
                                DataTable dt = atestat_2DataSet.Elevi;
                                int i;
                                for (i = 0; i < dt.Rows.Count; i++)
                                    richTextBox1.Text += dt.Rows[i]["numar_elevi"].ToString() + " " + dt.Rows[i]["scoala"] + '\n';
                            }
                            else
                                if (comboBox1.SelectedItem.ToString() == "Număr elevi pe clasă și pe școală")
                                {
                                    eleviTableAdapter.numar_elevi_pe_clasa_si_pe_scoala(atestat_2DataSet.Elevi);
                                    DataTable dt = atestat_2DataSet.Elevi;
                                    int i;
                                    for (i = 0; i < dt.Rows.Count; i++)
                                        richTextBox1.Text += dt.Rows[i]["numar_elevi"].ToString() + " " + dt.Rows[i]["scoala"] + dt.Rows[i]["clasa"] + '\n';
                                }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            richTextBox2.Text = "";
            if (comboBox2.SelectedItem == null)
                richTextBox2.Text = "Selectați o opțiune validă.";
            else
                if(comboBox2.SelectedItem.ToString() == "Număr lecții ")
                {
                    richTextBox2.Text += lectiiTableAdapter.numar_lectii();
                }
                else
                    if(comboBox2.SelectedItem.ToString() == "Număr lecții pe materii")
                    {
                        lectiiTableAdapter.numar_lectii_pe_materii(atestat_2DataSet.Lectii);
                        DataTable dt = atestat_2DataSet.Lectii;
                        int i;
                        for (i = 0; i < dt.Rows.Count; i++)
                            richTextBox2.Text += dt.Rows[i]["numar_lectii"] + " " + dt.Rows[i]["materie"] + '\n';
                    }
                    else
                        if(comboBox2.SelectedItem.ToString() == "Număr lecții pe nivel ")
                        {
                            lectiiTableAdapter.numar_lectii_pe_nivel(atestat_2DataSet.Lectii);
                            DataTable dt = atestat_2DataSet.Lectii;
                            int i;
                            for (i = 0; i < dt.Rows.Count; i++)
                                richTextBox2.Text += dt.Rows[i]["numar_lectii"] + " " + dt.Rows[i]["nivel"] + '\n';
                        }
                        else
                            if(comboBox2.SelectedItem.ToString() == "Număr teste care corespund unei lecții date și unei materii date")
                            {
                                string x = lectiiTableAdapter.numar_teste_care_corespund_unei_lectii_date_si_unei_materii_date(textBox1.Text, textBox2.Text).ToString();
                                if (x == "0")
                                    richTextBox2.Text += "Introduceți date valide în ambele casete-text.";
                                else
                                    richTextBox2.Text += x;
                            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            richTextBox3.Text = "";
            if (comboBox3.SelectedItem == null)
                richTextBox3.Text = "Selectați o opțiune validă.";
            else
                if(comboBox3.SelectedItem.ToString() == "Număr teste")
                {
                    richTextBox3.Text += testeTableAdapter.numar_teste();
                }
                else
                    if(comboBox3.SelectedItem.ToString() == "Număr teste pe materii")
                    {
                        testeTableAdapter.numar_teste_pe_materii(atestat_2DataSet.Teste);
                        DataTable dt = atestat_2DataSet.Teste;
                        int i;
                        for (i = 0; i < dt.Rows.Count; i++)
                            richTextBox3.Text += dt.Rows[i]["numar_teste"] + " " + dt.Rows[i]["materie"] + '\n';
                    }
                    else
                        if(comboBox3.SelectedItem.ToString() == "Număr teste pe nivel ")
                        {
                            testeTableAdapter.numar_teste_pe_nivel(atestat_2DataSet.Teste);
                            DataTable dt = atestat_2DataSet.Teste;
                            int i;
                            for (i = 0; i < dt.Rows.Count; i++)
                                richTextBox3.Text += dt.Rows[i]["numar_teste"] + " " + dt.Rows[i]["nivel"] + '\n';
                        }
        }

        private void îNTREBĂRIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl1.SelectedTab = tabPage4;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            richTextBox4.Text = "";
            if (comboBox4.SelectedItem == null)
                richTextBox4.Text = "Selectați o opțiune validă.";
            else
                if(comboBox4.SelectedItem.ToString() == "Număr întrebări")
                {
                    richTextBox4.Text += testeTableAdapter.numar_intrebari();
                }
                else
                    if(comboBox4.SelectedItem.ToString() == "Număr întrebări pe materii")
                    {
                        testeTableAdapter.numar_intrebari_pe_materii(atestat_2DataSet.Teste);
                        DataTable dt = atestat_2DataSet.Teste;
                        int i;
                        for(i=0;i<dt.Rows.Count;i++)
                            richTextBox4.Text += dt.Rows[i]["numar_intrebari"] + " " + dt.Rows[i]["materie"] + '\n';
                    }
                    else
                        if(comboBox4.SelectedItem.ToString() == "Număr întrebări la o lecție dată")
                        {
                            richTextBox4.Text = testeTableAdapter.numar_intrebari_la_o_lectie_data(textBox3.Text).ToString();
                            if (richTextBox4.Text == "")
                                richTextBox4.Text = "Introduceți date valide în prima casetă-text.";
                        }
                        else
                            if (comboBox4.SelectedItem.ToString() == "Număr întrebări la un nivel dat")
                            {
                                if (textBox4.Text != "1" && textBox4.Text != "2" && textBox4.Text != "3")
                                    richTextBox4.Text = "Introduceți în a doua casetă o valoare cuprinsă între 1 și 3.";
                                else
                                    richTextBox4.Text = testeTableAdapter.numar_intrebari_la_un_nivel_dat(decimal.Parse(textBox4.Text)).ToString();
                            }
        }
    }
}
