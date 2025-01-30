using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class duyuruGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet1TableAdapters.TBL_DUYURUTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURUTableAdapter();
                int id = Convert.ToInt32(Request.QueryString["DUYURUID"]);
               
                duyuruID.Text = id.ToString();
                baslik.Text = dt.duyuruGetir(id)[0].DUYURUBASLIK;
                icerik.Text = dt.duyuruGetir(id)[0].DUYURUICERIK;
            }
           
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrWhiteSpace(baslik.Text) || string.IsNullOrWhiteSpace(icerik.Text))
            {
                Label2.Visible = true;
            }
            else
            {
                DataSet1TableAdapters.TBL_DUYURUTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURUTableAdapter();
                dt.duyuruGuncelle(baslik.Text, icerik.Text, Convert.ToInt32(duyuruID.Text));
                Response.Redirect("duyuruListesi.aspx");
            }
            

        }
    }
}