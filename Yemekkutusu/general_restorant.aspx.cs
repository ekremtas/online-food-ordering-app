using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemekkutusu
{
    public partial class general_restorant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("anasayfa.aspx");
            }
            if (Session["username"] == "uye_email")
            {
                Response.Redirect("general.aspx");
            }

            Response.Write("hoigeldin");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("restorant_giris.aspx");
        }
    }
}