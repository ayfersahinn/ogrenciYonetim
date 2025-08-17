using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class dersListesi : BasePage
    {
        public dersListesi()
        {
            RequiredRole = "Ogretmen";
        }
        DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource= dt.dersListesi();
            Repeater1.DataBind();
        }
    }
}