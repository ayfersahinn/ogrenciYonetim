using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class login : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int varMi = Convert.ToInt32( dt.ogrenciGiris(txtNumara.Text, txtSifre.Text));
            if (varMi>0){
                Response.Redirect("ogrenciDefault.aspx?OGRNO=" + txtNumara.Text);

            }
            else
            {
                Label1.Visible = true;
            }
        }
    }
}