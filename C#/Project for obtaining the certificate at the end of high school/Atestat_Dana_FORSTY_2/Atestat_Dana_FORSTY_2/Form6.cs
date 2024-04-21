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
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";
            if (comboBox1.SelectedItem == null)
                richTextBox1.Text = "Selectați o opțiune validă.";
            else
                if (comboBox1.SelectedItem.ToString() == "Cartea, prietena mea")
                {
                    raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 111);
                    DataTable dt = atestat_2DataSet.Raspunsuri;
                    int i;
                    for (i = 0; i < dt.Rows.Count; i++)
                        richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                }
                else
                    if (comboBox1.SelectedItem.ToString() == "Scrierea unei probleme")
                    {
                        raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 121);
                        DataTable dt = atestat_2DataSet.Raspunsuri;
                        int i;
                        for (i = 0; i < dt.Rows.Count; i++)
                            richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                    }
                    else
                        if (comboBox1.SelectedItem.ToString() == "Hora. Nuneasca. Hategana")
                        {
                            raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 141);
                            DataTable dt = atestat_2DataSet.Raspunsuri;
                            int i;
                            for (i = 0; i < dt.Rows.Count; i++)
                                richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                        }
                        else
                            if (comboBox1.SelectedItem.ToString() == "Carpatii")
                            {
                                raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 161);
                                DataTable dt = atestat_2DataSet.Raspunsuri;
                                int i;
                                for (i = 0; i < dt.Rows.Count; i++)
                                    richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                            }
                            else
                                if (comboBox1.SelectedItem.ToString() == "Popoare de ieri si de azi")
                                {
                                    raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 171);
                                    DataTable dt = atestat_2DataSet.Raspunsuri;
                                    int i;
                                    for (i = 0; i < dt.Rows.Count; i++)
                                        richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                }
                                else
                                    if (comboBox1.SelectedItem.ToString() == "Sistemul Solar")
                                    {
                                        raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 181);
                                        DataTable dt = atestat_2DataSet.Raspunsuri;
                                        int i;
                                        for (i = 0; i < dt.Rows.Count; i++)
                                            richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                    }
                                    else
                                        if (comboBox1.SelectedItem.ToString() == "Urechea - alcatuire")
                                        {
                                            raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 211);
                                            DataTable dt = atestat_2DataSet.Raspunsuri;
                                            int i;
                                            for (i = 0; i < dt.Rows.Count; i++)
                                                richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                        }
                                        else
                                            if (comboBox1.SelectedItem.ToString() == "Urechea - functii, rol")
                                            {
                                                raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 221);
                                                DataTable dt = atestat_2DataSet.Raspunsuri;
                                                int i;
                                                for (i = 0; i < dt.Rows.Count; i++)
                                                    richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                            }
                                            else
                                                if (comboBox1.SelectedItem.ToString() == "Gimnosperme - Conifere")
                                                {
                                                    raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 231);
                                                    DataTable dt = atestat_2DataSet.Raspunsuri;
                                                    int i;
                                                    for (i = 0; i < dt.Rows.Count; i++)
                                                        richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                }
                                                else
                                                    if (comboBox1.SelectedItem.ToString() == "Metoda mersului invers")
                                                    {
                                                        raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri,241);
                                                        DataTable dt = atestat_2DataSet.Raspunsuri;
                                                        int i;
                                                        for (i = 0; i < dt.Rows.Count; i++)
                                                            richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                    }
                                                    else
                                                        if (comboBox1.SelectedItem.ToString() == "Evolutia economiei mondiale")
                                                        {
                                                            raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 311);
                                                            DataTable dt = atestat_2DataSet.Raspunsuri;
                                                            int i;
                                                            for (i = 0; i < dt.Rows.Count; i++)
                                                                richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                        }
                                                        else
                                                            if (comboBox1.SelectedItem.ToString() == "Sistemul geopolitic mondial actual")
                                                            {
                                                                raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 321);
                                                                DataTable dt = atestat_2DataSet.Raspunsuri;
                                                                int i;
                                                                for (i = 0; i < dt.Rows.Count; i++)
                                                                    richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                            }
                                                            else
                                                                if (comboBox1.SelectedItem.ToString() == "Romanizarea Provinciei Dacia")
                                                                {
                                                                    raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 331);
                                                                    DataTable dt = atestat_2DataSet.Raspunsuri;
                                                                    int i;
                                                                    for (i = 0; i < dt.Rows.Count; i++)
                                                                        richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                                }
                                                                else
                                                                    if (comboBox1.SelectedItem.ToString() == "Etnogeneza romaneasca")
                                                                    {
                                                                        raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 341);
                                                                        DataTable dt = atestat_2DataSet.Raspunsuri;
                                                                        int i;
                                                                        for (i = 0; i < dt.Rows.Count; i++)
                                                                            richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                                    }
                                                                    else
                                                                        if (comboBox1.SelectedItem.ToString() == "Participarea Romaniei in razboiul antisovietic")
                                                                        {
                                                                            raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 351);
                                                                            DataTable dt = atestat_2DataSet.Raspunsuri;
                                                                            int i;
                                                                            for (i = 0; i < dt.Rows.Count; i++)
                                                                                richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                                        }
                                                                        else
                                                                            if (comboBox1.SelectedItem.ToString() == "Batalia de la Stalingrad")
                                                                            {
                                                                                raspunsuriTableAdapter.afisare_raspunsuri_teste(atestat_2DataSet.Raspunsuri, 361);
                                                                                DataTable dt = atestat_2DataSet.Raspunsuri;
                                                                                int i;
                                                                                for (i = 0; i < dt.Rows.Count; i++)
                                                                                    richTextBox1.Text += dt.Rows[i]["cifra"] + ". " + dt.Rows[i]["litera"] + '\n';
                                                                            }
        }

        private void Form6_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'atestat_2DataSet.Raspunsuri' table. You can move, or remove it, as needed.
            this.raspunsuriTableAdapter.Fill(this.atestat_2DataSet.Raspunsuri);
            atestat_2DataSet.EnforceConstraints = false;
        }
    }
}
