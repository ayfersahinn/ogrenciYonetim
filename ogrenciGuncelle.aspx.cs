using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogrenciGuncelle : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
                    int id = Convert.ToInt32(Request.QueryString["OGRID"]);
                    ogrID.Text = id.ToString();
                    ogrAd.Text = dt.ogrenciGetir(id)[0].OGRAD;
                    ogrSoyad.Text = dt.ogrenciGetir(id)[0].OGRSOYAD;
                    ogrTel.Text = dt.ogrenciGetir(id)[0].OGRTEL;
                    ogrMail.Text = dt.ogrenciGetir(id)[0].OGRMAIL;
                    ogrSifre.Text = dt.ogrenciGetir(id)[0].OGRSIFRE;
                    ogrFoto.Text = dt.ogrenciGetir(id)[0].OGRFOTO;

                }
                catch (Exception)
                {

                    ogrFoto.Text = "Link girin";
                }
            }
			
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.ogrenciGuncelle(ogrAd.Text, ogrSoyad.Text, ogrTel.Text, ogrMail.Text, ogrSifre.Text, ogrFoto.Text, Convert.ToInt32( ogrID.Text));
            Response.Redirect("Default.aspx");
        }
    }
}