using System;
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
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
            cmd.CommandText = "insert into restorant (restorant_parola,restorant_email,restorant_ad,restorant_sahibi_ad,restorant_sahibi_soyad,restorant_sahibi_tel,restorant_sorumlu_ad,restorant_sorumlu_soyad,restorant_sorumlu_tel,restorant_tel) values('" + restorant_parola_TextBox.Text + "','" + restorant_email_TextBox.Text + "','" + restorant_ad_TextBox.Text + "','" + Restorant_Sahibi_Adı_TextBox.Text + "','" + Restorant_Sahibi_Soyadi_TextBox1.Text + "','" + Restorant_Sahibi_Telefon_TextBox.Text + "','" + Restorant_Sorumlu_Ad_TextBox.Text + "','" + Restorant_Sorumlu_Soyad_TextBox.Text + "','" + Restorant_Sorumlu_Telefon_TextBox.Text + "','" + Restorant_Telefon_TextBox.Text + "')";
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
