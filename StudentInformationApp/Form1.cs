using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StudentInformationApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        string connectionstring = @"server =USER;database=DB_StudentInfo;integrated security=true";
        public int roll;
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void insertButton_Click(object sender, EventArgs e)
        {
            roll = Convert.ToInt16(rollTextBox.Text);
            string name = nameTextBox.Text;
            string dateOfBirth = dateTextBox.Text;
            string fatherName = fatherNameTextBox.Text;
            string motherName = motherNameTextBox.Text;
            SqlConnection aConnection=new SqlConnection(connectionstring);
            aConnection.Open();
            string query = string.Format(@"insert into StudentInfo_Table(Roll,Name,DateOfBirth,FatherName,MotherName)
                   values('{0}','{1}','{2}','{3}','{4}')", roll, name, dateOfBirth, fatherName, motherName);
               SqlCommand aCommand=new SqlCommand(query,aConnection);
               MessageBox.Show("Data has been inserted");
            rollTextBox.Text = "";
            nameTextBox.Text = "";
            dateTextBox.Text = "";
            fatherNameTextBox.Text = "";
            motherNameTextBox.Text = "";
            aCommand.ExecuteNonQuery();
            aConnection.Close();
        }

        private void showButton_Click(object sender, EventArgs e)
        {
            
            dataGridView.Rows.Clear();
            dataGridView.Refresh();
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            string tableSql = "SELECT * FROM StudentInfo_Table";
            SqlCommand selectAllTableSqlCommand = new SqlCommand(tableSql, aConnection);

            SqlDataReader tableReader = selectAllTableSqlCommand.ExecuteReader();

            if (tableReader != null)
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                                                 tableReader[2].ToString(), tableReader[3].ToString(),
                                                 tableReader[4].ToString());
                }
            tableReader.Close();
            aConnection.Close();
 
        }

        private void searchButton_Click(object sender, EventArgs e)
        {
            dataGridView.Rows.Clear();
            dataGridView.Refresh();
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            roll = Convert.ToInt16(rollTextBox.Text);

            SqlCommand searchStudentByroll=
                new SqlCommand("SELECT * FROM StudentInfo_Table WHERE Roll like '" + roll + "'", aConnection);

            SqlDataReader tableReader = searchStudentByroll.ExecuteReader();
            if (tableReader != null)
            {
                bool check = true;
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                                                tableReader[2].ToString(), tableReader[3].ToString(),
                                                tableReader[4].ToString());
                    check = false;
                }
                if (check)
                { MessageBox.Show("Your desired Roll information is not present in the database. "); }
                tableReader.Close();
                aConnection.Close();
            }
        }
    }
}

        