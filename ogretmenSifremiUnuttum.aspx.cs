using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogretmenSifremiUnuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRTTableAdapter dt = new DataSet1TableAdapters.TBL_OGRTTableAdapter();
            int ogrtVarMi = Convert.ToInt32(dt.ogrtVarMi(txtNumara.Text));

            if (ogrtVarMi > 0)
            {
                Label2.Visible = true;
                Label1.Visible = false;

                if (txtSifre.Text == txtSifre2.Text)
                {
                    dt.ogrtParola(txtSifre2.Text, txtNumara.Text);
                    Response.Redirect("ogrtLogin.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label2.Visible = false;

                }
            }
            else
            {
                Label2.Visible = true;
                Label1.Visible = false;
            }
        }
    }
}