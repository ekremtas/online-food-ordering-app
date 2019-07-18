using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Yemekkutusu
{

    public partial class anasayfa : System.Web.UI.Page
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

        protected void email_TextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void girisyap_button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from uye where uye_email='" + email_TextBox.Text + "' and uye_parola='" + parola_TextBox.Text + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["username"] = dr["uye_email"].ToString();
                Response.Redirect("general.aspx");
            }




            //SqlDataAdapter da = new SqlDataAdapter("select * from uye where uye_email='" + email_TextBox.Text + "' and uye_parola='" + parola_TextBox.Text + "'", sqlCon);
            //da.SelectCommand.Parameters.Add("uye_email", SqlDbType.VarChar, 50);
            //da.SelectCommand.Parameters.Add("uye_parola", SqlDbType.VarChar, 30);
            //da.SelectCommand.Parameters["uye_email"].Value = email_TextBox.Text;
            //da.SelectCommand.Parameters["uye_parola"].Value = parola_TextBox.Text;
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Label1.Text = "Giriş Başarılı";
            }
            else
            {

                Label1.Text = "Hatalı Giriş Yaptınız!";
            }


            email_TextBox.Text = "";
            parola_TextBox.Text = "";


        }

        protected void uyeol_button_Click(object sender, EventArgs e)
        {
            //üye ol butonuna basıldıgında uye ol sayfasına yonlendirme yapıyor.
            Response.Redirect("uye_ol.aspx");
        }
    }
}