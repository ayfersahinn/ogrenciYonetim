using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            if(string.IsNullOrWhiteSpace(ogrAd.Text) || string.IsNullOrWhiteSpace(ogrSoyad.Text) || string.IsNullOrWhiteSpace(ogrTel.Text) || string.IsNullOrWhiteSpace(ogrMail.Text) || string.IsNullOrWhiteSpace(ogrSifre.Text))
            {
                Label1.Visible = true;
            }
            else
            {
                dt.ogrenciEkle(ogrAd.Text, ogrSoyad.Text, ogrTel.Text, ogrMail.Text, ogrSifre.Text, ogrFoto.Text);
                Response.Redirect("Default.aspx");
            }
           
        }
    }
}