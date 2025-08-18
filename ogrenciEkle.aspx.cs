using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogrenciEkle : BasePage
    {
        public ogrenciEkle()
        {
            RequiredRole = "Ogretmen";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            int ogrVarMi = Convert.ToInt32(dt.ogrVarMi(ogrNo.Text));
            
            if(string.IsNullOrWhiteSpace(ogrAd.Text) || string.IsNullOrWhiteSpace(ogrSoyad.Text) || string.IsNullOrWhiteSpace(ogrNo.Text) || string.IsNullOrWhiteSpace(ogrTel.Text) || string.IsNullOrWhiteSpace(ogrMail.Text) || string.IsNullOrWhiteSpace(ogrSifre.Text) || string.IsNullOrWhiteSpace(ogrFoto.Text))
            {
                Label1.Visible = true;
            }
            else
            {
                if (ogrVarMi > 0)
                {
                    Label2.Visible = true;
                }
                else
                {
                    dt.ogrenciEkle(ogrAd.Text, ogrSoyad.Text, ogrNo.Text, ogrTel.Text, ogrMail.Text, ogrSifre.Text, ogrFoto.Text);
                    Response.Redirect("Default.aspx");
                }
                
            }
           
        }
    }
}