using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from CATEGORY", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Dropdownlist1.DataSource = dt;
            Dropdownlist1.DataBind();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random ran = new Random();
        int i = ran.Next(0, 6);
        Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
    }
    protected void Onselectedindexchanged(object sender, EventArgs e)
    {
        Session["User_id1"] = Session["User_id"];
        Session["category"] = Dropdownlist1.SelectedItem.Text;
        Response.Redirect("Items Display.aspx");
    }
    protected void Menuitemclick(object sender, MenuEventArgs e)
    {

    }
    protected void Imagebutton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["User_id1"] = Session["User_id"];
        Response.Redirect("Cart page.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
