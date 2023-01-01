using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Items_Display1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Display();
    }
    public void Display()
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from PRODUCTINFORMATION where Name='" + Session["Product_name"] + "' ", con);
        Datalist1.DataSource = cmd.ExecuteReader();
        Datalist1.DataBind();
    }
    protected void More(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "More")
        {
            Session["User_id2"] = Session["User_id1"];
            Session["ID"] = Datalist1.DataKeys[e.Item.ItemIndex].ToString();
            Response.Redirect("Description.aspx");
        }
    }
}