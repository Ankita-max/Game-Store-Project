using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Textbox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();

        SqlCommand com = new SqlCommand("Sp_insert_feedback", con);
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.Parameters.AddWithValue("Name", Textbox1.Text);
        com.Parameters.AddWithValue("Email", Textbox2.Text);
        com.Parameters.AddWithValue("Message", Textbox3.Text);
        int k = com.ExecuteNonQuery();
        if (k != 0)
        {
            this.LastLabel.Text = "Thankyou for your feedback";
        }
        con.Close();
    }
}