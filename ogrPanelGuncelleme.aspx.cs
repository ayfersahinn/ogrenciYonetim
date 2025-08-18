using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogrPanelGuncelleme : BasePage
    {
        public ogrPanelGuncelleme()
        {
            RequiredRole = "Ogrenci";
        }
        DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ogrNo.Text = Request.QueryString["OGRNO"];


                ogrAdSoyad.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRAD + " " + dt.ogrenciPaneli(ogrNo.Text)[0].OGRSOYAD;
                ogrTel.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRTEL;
                ogrMail.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRMAIL;
                ogrSifre.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRSIFRE;
                ogrFoto.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRFOTO;
            }
            
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(ogrTel.Text) || string.IsNullOrEmpty(ogrMail.Text) || string.IsNullOrEmpty(ogrSifre.Text) || string.IsNullOrEmpty(ogrFoto.Text))
            {
                Label1.Visible = true;
            }
            else
            {
                dt.ogrPanelGuncelle(ogrTel.Text, ogrMail.Text, ogrSifre.Text, ogrFoto.Text, ogrNo.Text);
                Response.Redirect("ogrenciDefault.aspx?OGRNO="+ogrNo.Text);
            }
        }
    }
}