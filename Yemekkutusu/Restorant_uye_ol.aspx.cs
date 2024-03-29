﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Yemekkutusu
{
    public partial class Restorant_uye_ol : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-2SPCD21;Initial Catalog=yemek_kutusu;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Open)
            {
                sqlCon.Close();
            }
            sqlCon.Open();
            if (Session["username"] != null)
            {
                Response.Redirect("general.aspx");
            }
            else if (Session["restorantname"] != null)
            {
                Response.Redirect("general_restorant.aspx");
            }
            if (!IsPostBack)
            {
                cascadingdropdown();
            }
        }
        protected void cascadingdropdown()
        {

            SqlCommand sqlcomm = new SqlCommand("select * from tbl_il", sqlCon);
            sqlcomm.CommandType = CommandType.Text;
            DropDownList1.DataSource = sqlcomm.ExecuteReader();
            DropDownList1.DataTextField = "il_ad";
            DropDownList1.DataValueField = "il_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Seciniz.", "0"));


        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int il_id = Convert.ToInt32(DropDownList1.SelectedValue);

            SqlCommand sqlconn = new SqlCommand("select * from tbl_ilce where il_id=" + il_id, sqlCon);
            sqlconn.CommandType = CommandType.Text;
            DropDownList2.DataSource = sqlconn.ExecuteReader();
            DropDownList2.DataTextField = "ilce_ad";
            DropDownList2.DataValueField = "ilce_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Seciniz.", "0"));

        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ilce_id = Convert.ToInt32(DropDownList2.SelectedValue);

            SqlCommand sqlconn = new SqlCommand("select * from tbl_semt where ilce_id=" + ilce_id, sqlCon);
            sqlconn.CommandType = CommandType.Text;
            DropDownList3.DataSource = sqlconn.ExecuteReader();
            DropDownList3.DataTextField = "semt_ad";
            DropDownList3.DataValueField = "semt_id";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("Seciniz.", "0"));




        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text.ToString() == "0" || DropDownList2.Text.ToString() == "0" || DropDownList3.Text.ToString() == "0")
            {
                Response.Write("il - ilçe - semt alanlarını boş bırakmayın !");
                return;
            }
            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into adres (adres_il,adres_ilçe,adres_semt) values('" + email_TextBox.Text + "','" + restorant_ad_TextBox.Text + "','" + Restorant_Sahibi_Soyadi_TextBox1.Text + "')";
            //cmd.ExecuteNonQuery();
            //cmd.CommandText = "select adres_id from adres where adres_il='" + email_TextBox.Text + "' and adres_ilçe='" + restorant_ad_TextBox.Text + "' and adres_semt='" + Restorant_Sahibi_Soyadi_TextBox1.Text + "'";
            cmd.Connection = sqlCon;
            //SqlDataReader read = cmd.ExecuteReader();
            //String adres__id = string.Empty;
            //if (read.Read() == true)
            //{
            //    adres__id = read["adres_id"].ToString();
            //}
            //read.Close();
            cmd.CommandText = "insert into restorant (restorant_parola,restorant_email,restorant_ad,restorant_sahibi_ad,restorant_sahibi_soyad,restorant_sahibi_tel,restorant_sorumlu_ad,restorant_sorumlu_soyad,restorant_sorumlu_tel,restorant_tel,restorant_il_id,restorant_ilce_id,restorant_semt_id) values('" + restorant_parola_TextBox.Text + "','" + restorant_email_TextBox.Text + "','" + restorant_ad_TextBox.Text + "','" + Restorant_Sahibi_Adı_TextBox.Text + "','" + Restorant_Sahibi_Soyadi_TextBox1.Text + "','" + Restorant_Sahibi_Telefon_TextBox.Text + "','" + Restorant_Sorumlu_Ad_TextBox.Text + "','" + Restorant_Sorumlu_Soyad_TextBox.Text + "','" + Restorant_Sorumlu_Telefon_TextBox.Text + "','" + Restorant_Telefon_TextBox.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "')";
            cmd.ExecuteNonQuery();
            //string dt = Request.Form[txtDate.UniqueID];


            restorant_ad_TextBox.Text = "";
            Restorant_Sahibi_Adı_TextBox.Text = "";
            Restorant_Sahibi_Soyadi_TextBox1.Text = "";
            Restorant_Sahibi_Telefon_TextBox.Text = "";
            Restorant_Sorumlu_Ad_TextBox.Text = "";
            Restorant_Sorumlu_Soyad_TextBox.Text = "";
            Restorant_Sorumlu_Telefon_TextBox.Text = "";
            Restorant_Telefon_TextBox.Text = "";
            Restorant_Telefon_TextBox.Text = "";
            restorant_email_TextBox.Text = "";
            restorant_parola_TextBox.Text = "";
            restorant_parolatekrar_TextBox.Text = "";
        }
    }
}
