﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Yemekkutusu
{
    public partial class uye_ol : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-2SPCD21;Initial Catalog=yemek_kutusu;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Open)
            {
                sqlCon.Close();
            }
            sqlCon.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into uye (uye_email,uye_ad,uye_soyad,uye_telefon,uye_dt,uye_parola,uye_adres) values('" + email_TextBox.Text + "','" + ad_TextBox.Text  +"','"+ Soyad_TextBox.Text + "','" + telefon_TextBox.Text + "','"+ txtDate.Text +"','" + parola_TextBox.Text + "','" + adres_TextBox.Text +"')";
            cmd.ExecuteNonQuery();


            email_TextBox.Text = "";
            ad_TextBox.Text = "";
            Soyad_TextBox.Text = "";
            telefon_TextBox.Text = "";
            parola_TextBox.Text = "";
            adres_TextBox.Text = "";
        }
    }
}