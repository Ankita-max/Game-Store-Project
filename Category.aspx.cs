using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Category : System.Web.UI.Page
{
    String str;
    DataSet ds;
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Display();
    }
    public void Display()
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CATEGORY", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Gridview1.DataSource = dt;
        Gridview1.DataBind();
    }
}