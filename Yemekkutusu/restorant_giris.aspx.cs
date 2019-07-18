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
    public partial class restorant_giris : System.Web.UI.Page
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

        protected void uyeol_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Restorant_uye_ol.aspx");
        }

        protected void girisyap_button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from restorant where restorant_email='" + restorant_email_TextBox.Text + "' and restorant_parola='" + restorant_parola_TextBox.Text + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter das = new SqlDataAdapter(cmd);
            das.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["username"] = dr["restorant_email"].ToString();
                Response.Redirect("general_restorant.aspx");
            }




           
            if (dt.Rows.Count != 0)
            {
                Label1.Text = "Giriş Başarılı";
            }
            else
            {

                Label1.Text = "Hatalı Giriş Yaptınız!";
            }


            restorant_email_TextBox.Text = "";
            restorant_parola_TextBox.Text = "";


        }
    }
}