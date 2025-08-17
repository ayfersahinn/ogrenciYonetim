using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class dersSil : BasePage
    {
        public dersSil()
        {
            RequiredRole = "Ogretmen";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
            int id = Convert.ToInt32(Request.QueryString["DERSID"]);
            dt.dersSil(id);
            Response.Redirect("dersListesi.aspx");
        }
    }
}