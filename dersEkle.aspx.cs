using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class dersEkle : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int varMi=Convert.ToInt32( dt.dersSayisi( dersAd.Text));
            if(string.IsNullOrWhiteSpace(dersAd.Text))
            {
                Label2.Visible = true;
            }
            else
            {
                if (varMi > 0)
                {
                    Label1.Visible = true;
                }
                else
                {
                    dt.dersEkle(dersAd.Text);
                    Response.Redirect("dersListesi.aspx");
                }
            }
            
            
        }
    }
}