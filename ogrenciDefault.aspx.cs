using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ogrNo.Text = Request.QueryString["OGRNO"];

            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            ogrAdSoyad.Text = "Ad Soyad: "+dt.ogrenciPaneli(ogrNo.Text)[0].OGRAD + " " + dt.ogrenciPaneli(ogrNo.Text)[0].OGRSOYAD;
            ogrTel.Text = "Telefon: "+ dt.ogrenciPaneli(ogrNo.Text)[0].OGRTEL;
            ogrMail.Text =  "Email: "+ dt.ogrenciPaneli(ogrNo.Text)[0].OGRMAIL;
            ogrSifre.Text = "Şifre "+ dt.ogrenciPaneli(ogrNo.Text)[0].OGRSIFRE;
            ogrFoto.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRFOTO;

        }
    }
}