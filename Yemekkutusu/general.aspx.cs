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
    public partial class general : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-2SPCD21;Initial Catalog=yemek_kutusu;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("anasayfa.aspx");
            }
            if (sqlCon.State == ConnectionState.Open)
            {
                sqlCon.Close();
            }
            sqlCon.Open();

            String asd = Session["uyeid"].ToString();

            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from uye where uye_id='" + asd + "'";

            SqlDataReader read = cmd.ExecuteReader();


            String ad=string.Empty;

            while (read.Read())
            {
                ad = read["uye_ad"].ToString();

            }


            Response.Write("welcome" + asd +ad );
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("anasayfa.aspx");
        }
    }
}