using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogretmenAyarlar : BasePage
    {
        public ogretmenAyarlar()
        {
            RequiredRole = "Ogretmen";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet1TableAdapters.TBL_OGRTTableAdapter dt = new DataSet1TableAdapters.TBL_OGRTTableAdapter();
                ogrtNo.Text = Session["OGRETMEN_NO"].ToString();
                ogrtAdSoyad.Text = dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTADSOYAD;
                ogrtBrans.Text =  dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTBRANS.ToString();
                ogrtFoto.Text = dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTFOTO;
                ogrtSifre.Text = dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTSIFRE;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogretmenProfilGuncelleme.aspx?OGRETMEN_NO="+ogrtNo.Text);
        }
    }
}