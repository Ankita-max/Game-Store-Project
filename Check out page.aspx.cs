using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

public partial class Check_out_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        First.Text = Session["User_id1"].ToString();
        DataRow dr;
        if (!IsPostBack)
        {
            PopulateGridview();
            DisplayDetails();
        }
    }
    void PopulateGridview()
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CART where User_id='" + Session["User_id1"] + "'", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        adp.Fill(dt);
        int Total = 0;
        int Number = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            int q = Convert.ToInt32(dt.Rows[i][3]);
            int p = Convert.ToInt32(dt.Rows[i][4]);
            int Amount = p * q;
            Total += Amount;
            Number += q;
        }
        Gridview1.Columns[0].FooterText = "TOTAL";
        Gridview1.Columns[1].FooterText = Number.ToString();
        Gridview1.Columns[2].FooterText = Total.ToString();
        Gridview1.DataSource = dt;
        Gridview1.DataBind();
        con.Close();
    }
    void DisplayDetails()
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand("select * from INFORMATION where Id=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["User_id1"].ToString()));
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        int i = 0;
        DataRow dr = dt.Rows[i];
        Label5.Text = Convert.ToString(dr[1]);
        Label19.Text = Convert.ToString(dr[2]);
        Label7.Text = Convert.ToString(dr[3]);
        Label9.Text = Convert.ToString(dr[5]);
        Label11.Text = Convert.ToString(dr[6]);
        Label13.Text = Convert.ToString(dr[7]);
        Label15.Text = Convert.ToString(dr[8]);
        Label17.Text = Convert.ToString(dr[9]);
    }
    protected void CONTINUE_SHOPPING(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void EDIT_CART(object sender, EventArgs e)
    {
        Response.Redirect("Cart page.aspx");
    }

    string GenerateTransactionId()
    {
        Random rnd = new Random();
        Int64 s1 = rnd.Next(000000, 999999);
        Int64 s2 = Convert.ToInt64(DateTime.Now.ToString("ddMMyyyyyHHmmss"));
        string s3 = s1.ToString() + "" + s2.ToString();
        return s3;
    }

    protected void CHECK_OUT(object sender, EventArgs e)
    {
        string Paymentmode;
        if (Radiobutton1.Checked)
        {
            Paymentmode = "Cash on delivery";
        }
        else if (Radiobutton2.Checked)
        {
            Paymentmode = "Credit Card";
        }
        else
        {
            Paymentmode = "Debit Card";
        }
        string s4 = GenerateTransactionId();
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CART where User_id='" + Session["User_id1"] + "'", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        adp.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {

            SqlConnection con1 = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
            con1.Open();

            SqlCommand cmd1 = new SqlCommand("insert into ORDERDETAILS (Transaction_id, User_id, Product_name, Quantity, Price) values (@Transaction_id, @User_id, @Product_name, @Quantity, @Price)", con1);
            cmd1.Parameters.AddWithValue("@Transaction_id", s4);
            cmd1.Parameters.AddWithValue("@User_id", dt.Rows[i][1]);
            cmd1.Parameters.AddWithValue("@Product_name", dt.Rows[i][2]);
            cmd1.Parameters.AddWithValue("@Quantity", dt.Rows[i][3]);
            cmd1.Parameters.AddWithValue("@Price", dt.Rows[i][4]);
            cmd1.Parameters.AddWithValue("@Payment_mode", Paymentmode);

            int k = cmd1.ExecuteNonQuery();
            con1.Close();
        }

        SqlCommand com = new SqlCommand("DELETE FROM CART WHERE User_id='" + Session["User_id1"] + "'", con);
        int k1 = com.ExecuteNonQuery();


        con.Close();

        Session["Transactionid"] = s4;
        Response.Redirect("Thankyou.aspx");
    }
}