using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand("Sp_select_admin", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        SqlParameter p1 = new SqlParameter("Email_ID", TextBox1.Text);
        SqlParameter p2 = new SqlParameter("Password", TextBox2.Text);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.HasRows)
        {
            while (rd.Read())
            {
                Session["Id"] = rd[0].ToString();
                Response.Redirect("My Profile.aspx");
                Session.RemoveAll();
            }
        }
        else
        {
            this.Label3.Text = "Incorrect Username or Password";
        }
        con.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}