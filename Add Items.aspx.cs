﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Add_Items : System.Web.UI.Page
{
    String str;
    DataSet ds;
    DataRow dr;

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
            Dropdownlist3.DataSource = dt;
            Dropdownlist3.DataBind();
        }
    }
    public void Display()
    {
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from PRODUCTINFORMATION", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Gridview1.DataSource = dt;
        Gridview1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string folderpath = Server.MapPath("~/Images/");
        if (!Directory.Exists(folderpath))
        {
            Directory.CreateDirectory(folderpath);
        }
        Fileupload1.SaveAs(folderpath + Path.GetFileName(Fileupload1.FileName));
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();

        SqlCommand com = new SqlCommand("Sp_insert1_admin", con);
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.Parameters.AddWithValue("Name", Textbox1.Text);
        com.Parameters.AddWithValue("Short_description", Textbox2.Text);
        com.Parameters.AddWithValue("Long_description", Textbox3.Text);
        com.Parameters.AddWithValue("Category", this.Dropdownlist3.SelectedItem.Text);
        com.Parameters.AddWithValue("Quantity", (this.Dropdownlist1.SelectedItem.Text));
        com.Parameters.AddWithValue("Price", (this.Dropdownlist2.SelectedItem.Text));
        com.Parameters.AddWithValue("Image", "~/Images/" + Path.GetFileName(Fileupload1.FileName));

        int k = com.ExecuteNonQuery();
        if (k != 0)
        {
            this.Lastlabel.Text = "Successfully inserted";
            this.Lastlabel.ForeColor = System.Drawing.Color.White;
        }
        con.Close();
        Display();
        this.Textbox1.Text = " ";
        this.Textbox2.Text = " ";
        this.Textbox3.Text = " ";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string folderpath = Server.MapPath("~/Images/");
        if (!Directory.Exists(folderpath))
        {
            Directory.CreateDirectory(folderpath);
        }
        Fileupload1.SaveAs(folderpath + Path.GetFileName(Fileupload1.FileName));
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand com = new SqlCommand("UPDATE PRODUCTINFORMATION SET Name=@Name, Short_description=@Short_description, Long_description=@Long_description, Category=@Category, Quantity=@Quantity, Price=@Price,  Image=@Image WHERE Id=@id", con);
        com.Parameters.AddWithValue("@Name", Textbox1.Text);
        com.Parameters.AddWithValue("@Short_description", Textbox2.Text);
        com.Parameters.AddWithValue("@Long_description", Textbox3.Text);
        com.Parameters.AddWithValue("@Category", this.Dropdownlist3.SelectedItem.Text);
        com.Parameters.AddWithValue("@Quantity", this.Dropdownlist1.SelectedItem.Text);
        com.Parameters.AddWithValue("@Price", this.Dropdownlist2.SelectedItem.Text);
        com.Parameters.AddWithValue("Image", "~/Images/" + Path.GetFileName(Fileupload1.FileName));
        com.Parameters.AddWithValue("@id", Convert.ToInt32(Shortcut.Text));
        int k = com.ExecuteNonQuery();
        Gridview1.EditIndex = -1;
        this.Display();
        con.Close();
        Button2.Visible = false;
        Button1.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Lastlabel.Text = "";
        Textbox1.Text = "";
        Textbox2.Text = "";
        Textbox3.Text = "";
        this.Display();
        Button2.Visible = false;
        Button1.Visible = true;
    }
    protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Lastlabel.Text = "";
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from PRODUCTINFORMATION where Id=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Gridview1.DataKeys[e.NewEditIndex].Value.ToString()));
        Shortcut.Text = Gridview1.DataKeys[e.NewEditIndex].Value.ToString();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        int i = 0;
        dr = dt.Rows[i];
        Textbox1.Text = Convert.ToString(dr[1]);
        Textbox2.Text = Convert.ToString(dr[2]);
        Textbox3.Text = Convert.ToString(dr[3]);
        this.Display();
        Button2.Visible = true;
        Button1.Visible = false;
    }
    protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Lastlabel.Text = "";
        SqlConnection con = new SqlConnection(@" Data Source = (LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security = True");
        con.Open();
        SqlCommand com = new SqlCommand("DELETE FROM PRODUCTINFORMATION WHERE Id=@id", con);
        com.Parameters.AddWithValue("@id", Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value.ToString()));
        int k = com.ExecuteNonQuery();
        this.Display();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}