using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogrtLogin : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_OGRTTableAdapter dt2 = new DataSet1TableAdapters.TBL_OGRTTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ogrtClick_Click(object sender, EventArgs e)
        {
                Response.Redirect("ogrtLogin.aspx");

        }

        protected void ogrenciclick_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ogrtGiris = Convert.ToInt32(dt2.ogrtGiris(txtNumara.Text, txtSifre.Text));
            if (ogrtGiris > 0)
            {
                Session.Add("OGRETMEN_NO", txtNumara.Text);
                Response.Redirect("Default.aspx?OGRETMEN_NO" + txtNumara.Text);
            }
            else
            {
                Label1.Visible = true;
            }
        }
    }
}