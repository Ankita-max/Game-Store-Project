using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class My_Profile : System.Web.UI.Page
{
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand("select * from ADMIN where Id=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["Id"].ToString()));
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        int i = 0;
        dr = dt.Rows[i];
        Label2.Text = Convert.ToString(dr[0]);
        Label4.Text = Convert.ToString(dr[1]);
        Label6.Text = Convert.ToString(dr[2]);
        Label8.Text = Convert.ToString(dr[3]);
    }
    protected void Change_Password(object sender, EventArgs e)
    {
        Label9.Visible = true;
        Label10.Visible = true;
        Textbox1.Visible = true;
        Textbox2.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;
    }
    protected void Confirm_Password(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand com = new SqlCommand("UPDATE ADMIN SET Password=@Password WHERE Id=@Id", con);
        com.Parameters.AddWithValue("@Id", Convert.ToInt32(Label2.Text));
        com.Parameters.AddWithValue("@Password", Textbox1.Text);
        int k = com.ExecuteNonQuery();
        if (k != 0)
        {
            Response.Redirect("Login.aspx");
        }
        con.Close();
    }
    protected void Cancel(object sender, EventArgs e)
    {
        Textbox1.Text = "";
        Textbox2.Text = "";
        Label9.Visible = false;
        Label10.Visible = false;
        Textbox1.Visible = false;
        Textbox2.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;
    }
}