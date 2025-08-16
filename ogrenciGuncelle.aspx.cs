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
        DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    
                    int id = Convert.ToInt32(Request.QueryString["OGRID"]);
                    ogrID.Text = id.ToString();
                    ogrNo.Text = dt.ogrenciGetir(id)[0].OGRNO;
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
            
            if (string.IsNullOrWhiteSpace(ogrAd.Text) || string.IsNullOrWhiteSpace(ogrNo.Text) || string.IsNullOrWhiteSpace(ogrSoyad.Text) || string.IsNullOrWhiteSpace(ogrTel.Text) || string.IsNullOrWhiteSpace(ogrMail.Text) || string.IsNullOrWhiteSpace(ogrSifre.Text))
            {
                Label1.Visible = true;
            }
            else
            {
                dt.ogrenciGuncelle(ogrAd.Text, ogrSoyad.Text,ogrNo.Text, ogrTel.Text, ogrMail.Text, ogrSifre.Text, ogrFoto.Text, Convert.ToInt32(ogrID.Text));
                Response.Redirect("Default.aspx");
            }
           
        }
    }
}