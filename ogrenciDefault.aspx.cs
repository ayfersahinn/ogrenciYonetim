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
            if (!IsPostBack)
            {
                ogrNo.Text = Session["OGRNO"].ToString();

                DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
                ogrAdSoyad.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRAD + " " + dt.ogrenciPaneli(ogrNo.Text)[0].OGRSOYAD;
                ogrTel.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRTEL;
                ogrMail.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRMAIL;
                ogrSifre.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRSIFRE;
                ogrFoto.Text = dt.ogrenciPaneli(ogrNo.Text)[0].OGRFOTO;
            }
           

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogrPanelGuncelleme.aspx?OGRNO="+ogrNo.Text);
        }
    }
}