using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class duyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //öğretmenleri comboboxa atama
            if (!IsPostBack)
            {
                DataSet1TableAdapters.TBL_OGRTTableAdapter dt = new DataSet1TableAdapters.TBL_OGRTTableAdapter();
                ogrt.DataSource = dt.ogrtListesi();
                ogrt.DataTextField = "OGRTADSOYAD";
                ogrt.DataValueField = "OGRTID";
                ogrt.DataBind();
            }
            
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrWhiteSpace(baslik.Text) || string.IsNullOrWhiteSpace(icerik.Text) || string.IsNullOrWhiteSpace(ogrt.SelectedValue))
            {
                Label2.Visible = true;
            }
            else
            {
                DataSet1TableAdapters.TBL_DUYURUTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURUTableAdapter();
                dt.duyuruEkle(baslik.Text, icerik.Text, Convert.ToInt32(ogrt.SelectedValue));
                Response.Redirect("duyuruListesi.aspx");
            }
           
        }
    }
}