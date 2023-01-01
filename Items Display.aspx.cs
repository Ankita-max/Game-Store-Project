using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Items_Display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Testlabel.Text = Session["category"].ToString();
        First.Text = Session["User_id1"].ToString();
        Display();
    }
    public void Display()
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from PRODUCTINFORMATION where Category='" + Session["category"] + "' ", con);
        Datalist1.DataSource = cmd.ExecuteReader();
        Datalist1.DataBind();
    }
    protected void Datalist1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void More(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "More")
        {
            Session["User_id2"] = First.Text;
            Session["ID"] = Datalist1.DataKeys[e.Item.ItemIndex].ToString();
            Response.Redirect("Description.aspx");
        }
    }
}