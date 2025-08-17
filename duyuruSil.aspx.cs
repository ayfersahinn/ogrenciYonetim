using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class duyuruSil : BasePage
    {
        public duyuruSil()
        {
            RequiredRole = "Ogretmen";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURUTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURUTableAdapter();
            int id = Convert.ToInt32(Request.QueryString["DUYURUID"]);
            dt.duyuruSil(id);
            Response.Redirect("duyuruListesi.aspx");
        }
    }
}