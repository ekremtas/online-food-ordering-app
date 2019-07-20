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
            if (Session["restorantname"] == null)
            {
                Response.Redirect("general.aspx");
            }
            

            Response.Write("hoigeldin");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("anasayfa.aspx");
        }
    }
}