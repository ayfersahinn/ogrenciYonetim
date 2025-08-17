using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class dersGuncelle : BasePage
    {
        public dersGuncelle()
        {
            RequiredRole = "Ogretmen";
        }
        DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["DERSID"]);
                dersId.Text = id.ToString();
                dersAd.Text = dt.dersGetir(id)[0].DERSAD;
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DERSID"]);
            
            
            if (string.IsNullOrWhiteSpace(dersAd.Text))
            {
                Label2.Visible = true;
            }
            else
            {
        
                dt.dersGuncelle(dersAd.Text, id);
                Response.Redirect("dersListesi.aspx");
                
            }
        }
    }
}