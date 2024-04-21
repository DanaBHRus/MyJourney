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
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";
            if (comboBox1.SelectedItem == null)
                richTextBox1.Text = "Selectați o opțiune validă.";
            else
                if(comboBox1.SelectedItem.ToString() == "Cartea, prietena mea")
                {
                    intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 111);
                    DataTable dt = atestat_2DataSet.Intrebari;
                    int i;
                    for (i = 0; i < dt.Rows.Count; i++)
                        richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                }
                else
                    if (comboBox1.SelectedItem.ToString() == "Scrierea unei probleme")
                    {
                        intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 121);
                        DataTable dt = atestat_2DataSet.Intrebari;
                        int i;
                        for (i = 0; i < dt.Rows.Count; i++)
                            richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                    }
                    else
                        if (comboBox1.SelectedItem.ToString() == "Hora. Nuneasca. Hategana")
                        {
                            intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 141);
                            DataTable dt = atestat_2DataSet.Intrebari;
                            int i;
                            for (i = 0; i < dt.Rows.Count; i++)
                                richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + '\n';
                        }
                        else
                            if (comboBox1.SelectedItem.ToString() == "Carpatii")
                            {
                                intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 161);
                                DataTable dt = atestat_2DataSet.Intrebari;
                                int i;
                                for (i = 0; i < dt.Rows.Count; i++)
                                    richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                            }
                            else
                                if (comboBox1.SelectedItem.ToString() == "Popoare de ieri si de azi")
                                {
                                    intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 171);
                                    DataTable dt = atestat_2DataSet.Intrebari;
                                    int i;
                                    for (i = 0; i < dt.Rows.Count; i++)
                                        richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                }
                                else
                                    if (comboBox1.SelectedItem.ToString() == "Sistemul Solar")
                                    {
                                        intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 181);
                                        DataTable dt = atestat_2DataSet.Intrebari;
                                        int i;
                                        for (i = 0; i < dt.Rows.Count; i++)
                                            richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                    }
                                    else
                                        if (comboBox1.SelectedItem.ToString() == "Urechea - alcatuire")
                                        {
                                            intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 211);
                                            DataTable dt = atestat_2DataSet.Intrebari;
                                            int i;
                                            for (i = 0; i < dt.Rows.Count; i++)
                                                richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                        }
                                        else
                                            if (comboBox1.SelectedItem.ToString() == "Urechea - functii, rol")
                                            {
                                                intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 221);
                                                DataTable dt = atestat_2DataSet.Intrebari;
                                                int i;
                                                for (i = 0; i < dt.Rows.Count; i++)
                                                    richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                            }
                                            else
                                                if (comboBox1.SelectedItem.ToString() == "Gimnosperme - Conifere")
                                                {
                                                    intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 231);
                                                    DataTable dt = atestat_2DataSet.Intrebari;
                                                    int i;
                                                    for (i = 0; i < dt.Rows.Count; i++)
                                                        richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                }
                                                else
                                                    if (comboBox1.SelectedItem.ToString() == "Metoda mersului invers")
                                                    {
                                                        intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 241);
                                                        DataTable dt = atestat_2DataSet.Intrebari;
                                                        int i;
                                                        for (i = 0; i < dt.Rows.Count; i++)
                                                            richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                    }
                                                    else
                                                        if (comboBox1.SelectedItem.ToString() == "Evolutia economiei mondiale")
                                                        {
                                                            intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 311);
                                                            DataTable dt = atestat_2DataSet.Intrebari;
                                                            int i;
                                                            for (i = 0; i < dt.Rows.Count; i++)
                                                                richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                        }
                                                        else
                                                            if (comboBox1.SelectedItem.ToString() == "Sistemul geopolitic mondial actual")
                                                            {
                                                                intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 321);
                                                                DataTable dt = atestat_2DataSet.Intrebari;
                                                                int i;
                                                                for (i = 0; i < dt.Rows.Count; i++)
                                                                    richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                            }
                                                            else
                                                                if (comboBox1.SelectedItem.ToString() == "Romanizarea Provinciei Dacia")
                                                                {
                                                                    intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 331);
                                                                    DataTable dt = atestat_2DataSet.Intrebari;
                                                                    int i;
                                                                    for (i = 0; i < dt.Rows.Count; i++)
                                                                        richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                                }
                                                                else
                                                                    if (comboBox1.SelectedItem.ToString() == "Etnogeneza romaneasca")
                                                                    {
                                                                        intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 341);
                                                                        DataTable dt = atestat_2DataSet.Intrebari;
                                                                        int i;
                                                                        for (i = 0; i < dt.Rows.Count; i++)
                                                                            richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                                    }
                                                                    else
                                                                        if (comboBox1.SelectedItem.ToString() == "Participarea Romaniei in razboiul antisovietic")
                                                                        {
                                                                            intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 351);
                                                                            DataTable dt = atestat_2DataSet.Intrebari;
                                                                            int i;
                                                                            for (i = 0; i < dt.Rows.Count; i++)
                                                                                richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                                        }
                                                                        else
                                                                            if (comboBox1.SelectedItem.ToString() == "Batalia de la Stalingrad")
                                                                            {
                                                                                intrebariTableAdapter.afisare_intrebari_din_teste(atestat_2DataSet.Intrebari, 361);
                                                                                DataTable dt = atestat_2DataSet.Intrebari;
                                                                                int i;
                                                                                for (i = 0; i < dt.Rows.Count; i++)
                                                                                    richTextBox1.Text += dt.Rows[i]["enunt"].ToString() + '\n' + dt.Rows[i]["v1"] + '\n' + dt.Rows[i]["v2"] + '\n' + dt.Rows[i]["v3"] + '\n' + dt.Rows[i]["v4"] + '\n' + '\n';
                                                                            }
            }

        private void Form5_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'atestat_2DataSet.Intrebari' table. You can move, or remove it, as needed.
            this.intrebariTableAdapter.Fill(this.atestat_2DataSet.Intrebari);
            atestat_2DataSet.EnforceConstraints = false;
        }
    }
}
