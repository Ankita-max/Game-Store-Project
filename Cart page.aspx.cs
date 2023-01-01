using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Cart_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        First.Text = Session["User_id1"].ToString();
        if (!IsPostBack)
        {
            PopulateGridview();
        }
    }
    void PopulateGridview()
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CART where User_id='" + Session["User_id1"] + "'", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Gridview1.DataSource = dt;
        Gridview1.DataBind();
    }


    protected void Gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Gridview1.EditIndex = e.NewEditIndex;
        PopulateGridview();

    }
    protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand com = new SqlCommand("DELETE FROM CART WHERE Id=@id", con);
        com.Parameters.AddWithValue("@id", Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value.ToString()));
        int k = com.ExecuteNonQuery();
        PopulateGridview();
        con.Close();
    }
    protected void Gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Id = Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value.ToString());
        Label4.Text = Id.ToString();
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        TextBox Quantity = Gridview1.Rows[e.RowIndex].FindControl("Textbox1") as TextBox;
        Label4.Text = Quantity.Text;
        SqlCommand com = new SqlCommand("update CART set Quantity = ' " + Quantity.Text + " ' where Id=@Id", con);
        com.Parameters.AddWithValue("Id", Id);
        int k = com.ExecuteNonQuery();
        Gridview1.EditIndex = -1;
        PopulateGridview();
        con.Close();
    }
    protected void Gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Gridview1.EditIndex = -1;
        PopulateGridview();

    }
    protected void CONTINUE_SHOPPING(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CHECKOUT(object sender, EventArgs e)
    {
        Session["User_id1"] = First.Text;
        Response.Redirect("Check out page.aspx");
    }
}