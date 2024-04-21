using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Lab3_p1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            dataGridView1.AllowUserToDeleteRows = true;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'ufDataSet1.Universitati' table. You can move, or remove it, as needed.
            this.universitatiTableAdapter.Fill(this.ufDataSet1.Universitati);
            // TODO: This line of code loads data into the 'ufDataSet1.Facultati' table. You can move, or remove it, as needed.
            this.facultatiTableAdapter.Fill(this.ufDataSet1.Facultati);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            listBox2.Items.Clear();
            universitatiTableAdapter.Fill(ufDataSet1.Universitati);
            DataTable dt = ufDataSet1.Universitati;
            int i;
            for (i = 0; i < dt.Rows.Count; i++)
                listBox1.Items.Add(dt.Rows[i]["ID"].ToString() + " " + dt.Rows[i]["Name"].ToString().TrimEnd() 
                    + " " + dt.Rows[i]["City"].ToString().TrimEnd() + " " + dt.Rows[i]["Code"].ToString());
            facultatiTableAdapter.afisareFacultati(ufDataSet1.Facultati);
            dt = ufDataSet1.Facultati;
            dataGridView1.DataSource = ufDataSet1.Facultati;
            for (i = 0; i < dt.Rows.Count; i++)
                listBox2.Items.Add(dt.Rows[i]["ID"].ToString() + " " + dt.Rows[i]["Code"].ToString() + " "
                    + dt.Rows[i]["NameF"].ToString().TrimEnd());
        }

        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            try
            {
                universitatiTableAdapter.Fill(ufDataSet1.Universitati);
                DataTable dt = ufDataSet1.Universitati;
                int x = int.Parse(dt.Rows[dt.Rows.Count - 1]["ID"].ToString()) + 1;
                universitatiTableAdapter.InsertQuery(x, textBox1.Text, textBox2.Text, int.Parse(textBox3.Text));
                universitatiTableAdapter.Fill(ufDataSet1.Universitati);
                dt = ufDataSet1.Universitati;
                int i;
                for (i = 0; i < dt.Rows.Count; i++)
                    listBox1.Items.Add(dt.Rows[i]["ID"].ToString() + " " + dt.Rows[i]["Name"].ToString().TrimEnd() 
                        + " " + dt.Rows[i]["City"].ToString().TrimEnd() + " " + dt.Rows[i]["Code"].ToString());
            }
            catch (Exception ex)
            {
                textBox3.Text = "Introduceti un numar.";
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            try
            {
                universitatiTableAdapter.UpdateQuery(textBox1.Text, textBox2.Text, int.Parse(textBox3.Text), 
                    int.Parse(textBox3.Text));
                universitatiTableAdapter.Fill(ufDataSet1.Universitati);
                DataTable dt = ufDataSet1.Universitati;
                int i;
                for (i = 0; i < dt.Rows.Count; i++)
                    listBox1.Items.Add(dt.Rows[i]["ID"].ToString() + " " + dt.Rows[i]["Name"].ToString().TrimEnd() 
                        +  " " + dt.Rows[i]["City"].ToString().TrimEnd() + " " + dt.Rows[i]["Code"].ToString());
            }
            catch (Exception ex)
            {
                textBox3.Text = "Introduceti un numar.";
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            try
            {
                universitatiTableAdapter.DeleteQuery(int.Parse(textBox3.Text));
                universitatiTableAdapter.Fill(ufDataSet1.Universitati);
                DataTable dt = ufDataSet1.Universitati;
                int i;
                for (i = 0; i < dt.Rows.Count; i++)
                    listBox1.Items.Add(dt.Rows[i]["ID"].ToString() + " " + dt.Rows[i]["Name"].ToString().TrimEnd() 
                        + " " + dt.Rows[i]["City"].ToString().TrimEnd() + " " + dt.Rows[i]["Code"].ToString());
            }
            catch (Exception ex)
            {
                textBox3.Text = "Introduceti un numar";
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            DialogResult result = MessageBox.Show("Sigur doriți să ștergeți această linie?", "Confirmare ștergere", 
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                    dataGridView1.Rows.RemoveAt(e.RowIndex);
        }

        private void dataGridView1_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {
            DialogResult result = MessageBox.Show("Sigur doriți să ștergeți această linie?", "Confirmare ștergere",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                dataGridView1.Rows.RemoveAt(e.RowIndex);
        }
    }
}
