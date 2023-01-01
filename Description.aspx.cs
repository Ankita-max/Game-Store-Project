using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Description : System.Web.UI.Page
{
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        First.Text = Session["User_id2"].ToString();
        Label1.Text = Session["ID"].ToString();
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand("select * from PRODUCTINFORMATION where Id=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["ID"].ToString()));
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        int i = 0;
        dr = dt.Rows[i];
        Image1.ImageUrl = Convert.ToString(dr[7]);
        Label3.Text = Convert.ToString(dr[1]);
        Label5.Text = Convert.ToString(dr[2]);
        Label7.Text = Convert.ToString(dr[3]);
        Label9.Text = Convert.ToString(dr[4]);
        Label11.Text = Convert.ToString(dr[5]);
        Label13.Text = Convert.ToString(dr[6]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();

        SqlCommand com = new SqlCommand("Sp_insert", con);
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.Parameters.AddWithValue("User_id", Session["User_id2"]);
        com.Parameters.AddWithValue("Product_name", Label3.Text);
        com.Parameters.AddWithValue("Quantity", Textbox1.Text);
        com.Parameters.AddWithValue("Price", Label13.Text);
        com.Parameters.AddWithValue("Image", Image1.ImageUrl);
        int k = com.ExecuteNonQuery();
        if (k != 0)
        {
            this.Lastlabel.Text = "Added to cart";
            this.Lastlabel.ForeColor = System.Drawing.Color.Yellow;
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}