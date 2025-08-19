using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogretmenProfilGuncelleme : BasePage
    {
        public ogretmenProfilGuncelleme()
        {
            RequiredRole = "Ogretmen";
        }

        DataSet1TableAdapters.TBL_OGRTTableAdapter dt = new DataSet1TableAdapters.TBL_OGRTTableAdapter();
        DataSet1TableAdapters.TBL_DERSTableAdapter dt2 = new DataSet1TableAdapters.TBL_DERSTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               //combobox
                ogrtBrans.DataSource = dt2.dersListesi();
                ogrtBrans.DataTextField = "DERSAD";
                ogrtBrans.DataValueField = "DERSID";
                ogrtBrans.DataBind();
                //öğretmen bilgileri getirme
                ogrtNo.Text = Session["OGRETMEN_NO"].ToString();
                ogrtAdSoyad.Text = dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTADSOYAD;
                ogrtBrans.Text = dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTBRANS.ToString();
                ogrtFoto.Text = dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTFOTO;
                ogrtSifre.Text = dt.OgrtBilgileri(ogrtNo.Text)[0].OGRTSIFRE;
            }
           
           
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.ogrtGuncelle(ogrtAdSoyad.Text, Convert.ToInt32(ogrtBrans.SelectedValue), ogrtFoto.Text, ogrtSifre.Text, ogrtNo.Text);
            Response.Redirect("ogretmenAyarlar.aspx");
        }
    }
}