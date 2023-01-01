using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();

        SqlCommand com = new SqlCommand("Sp_insert1", con);
        com.CommandType = System.Data.CommandType.StoredProcedure;
        SqlParameter p1 = new SqlParameter("First_name", this.TextBox1.Text);
        SqlParameter p2 = new SqlParameter("Last_name", this.TextBox2.Text);
        SqlParameter p3 = new SqlParameter("Email", this.TextBox3.Text);
        SqlParameter p4 = new SqlParameter("Password", this.TextBox4.Text);
        SqlParameter p5 = new SqlParameter("Address_1", this.TextBox6.Text);
        SqlParameter p6 = new SqlParameter("City", this.TextBox7.Text);
        SqlParameter p7 = new SqlParameter("Post_Code", this.TextBox8.Text);
        SqlParameter p8 = new SqlParameter("State", this.TextBox9.Text);
        SqlParameter p9 = new SqlParameter("Country", this.TextBox10.Text);

        com.Parameters.Add(p1);
        com.Parameters.Add(p2);
        com.Parameters.Add(p3);
        com.Parameters.Add(p4);
        com.Parameters.Add(p5);
        com.Parameters.Add(p6);
        com.Parameters.Add(p7);
        com.Parameters.Add(p8);
        com.Parameters.Add(p9);

        int k = com.ExecuteNonQuery();
        if (k != 0)
        {
            this.LastLabel.Text = "Sign Up Successful";
            this.LastLabel.ForeColor = System.Drawing.Color.Red;
            this.FinalLabel1.Text = "Click <a href='Signin.aspx'>HERE</a> to Login";
        }
        con.Close();
    }
}