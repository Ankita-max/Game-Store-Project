using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SignIn(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand("Sp_select", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        SqlParameter p1 = new SqlParameter("Email", TextBox1.Text);
        SqlParameter p2 = new SqlParameter("Password", TextBox2.Text);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.HasRows)
        {
            while (rd.Read())
            {
                Session["User_id"] = rd.GetInt32(0);

            }
            Session["Email"] = this.TextBox1.Text;
            Response.Redirect("Home.aspx");
            Session.RemoveAll();
        }
        else
        {
            this.LastLabel.Text = "Incorrect Username or Password";
        }
        con.Close();
    }
}