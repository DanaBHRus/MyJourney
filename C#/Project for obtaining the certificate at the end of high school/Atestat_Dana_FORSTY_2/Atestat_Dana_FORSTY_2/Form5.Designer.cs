namespace Atestat_Dana_FORSTY_2
{
    partial class Form5
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.atestat_2DataSet = new Atestat_Dana_FORSTY_2.atestat_2DataSet();
            this.intrebariBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.intrebariTableAdapter = new Atestat_Dana_FORSTY_2.atestat_2DataSetTableAdapters.IntrebariTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.atestat_2DataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.intrebariBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(191, 31);
            this.label1.TabIndex = 0;
            this.label1.Text = "Selectați testul ";
            // 
            // comboBox1
            // 
            this.comboBox1.BackColor = System.Drawing.SystemColors.Info;
            this.comboBox1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Cartea, prietena mea",
            "Scrierea unei probleme",
            "Hora. Nuneasca. Hategana",
            "Carpatii",
            "Popoare de ieri si de azi",
            "Sistemul Solar",
            "Urechea - alcatuire",
            "Urechea - functii, rol",
            "Gimnosperme - Conifere",
            "Metoda mersului invers",
            "Evolutia economiei mondiale",
            "Sistemul geopolitic mondial actual",
            "Romanizarea Provinciei Dacia",
            "Etnogeneza romaneasca",
            "Participarea Romaniei in razboiul antisovietic",
            "Batalia de la Stalingrad"});
            this.comboBox1.Location = new System.Drawing.Point(276, 12);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(463, 32);
            this.comboBox1.TabIndex = 1;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.Info;
            this.button1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(745, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(127, 31);
            this.button1.TabIndex = 2;
            this.button1.Text = "Execută";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // richTextBox1
            // 
            this.richTextBox1.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBox1.Location = new System.Drawing.Point(18, 77);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(721, 372);
            this.richTextBox1.TabIndex = 3;
            this.richTextBox1.Text = "";
            // 
            // atestat_2DataSet
            // 
            this.atestat_2DataSet.DataSetName = "atestat_2DataSet";
            this.atestat_2DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // intrebariBindingSource
            // 
            this.intrebariBindingSource.DataMember = "Intrebari";
            this.intrebariBindingSource.DataSource = this.atestat_2DataSet;
            // 
            // intrebariTableAdapter
            // 
            this.intrebariTableAdapter.ClearBeforeFill = true;
            // 
            // Form5
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.ClientSize = new System.Drawing.Size(884, 461);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Form5";
            this.Text = "TESTE";
            this.Load += new System.EventHandler(this.Form5_Load);
            ((System.ComponentModel.ISupportInitialize)(this.atestat_2DataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.intrebariBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private atestat_2DataSet atestat_2DataSet;
        private System.Windows.Forms.BindingSource intrebariBindingSource;
        private atestat_2DataSetTableAdapters.IntrebariTableAdapter intrebariTableAdapter;
    }
}