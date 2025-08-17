using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class gelenMesaj : BasePage
    {
        public gelenMesaj()
        {
            RequiredRole = "Ogretmen";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJTableAdapter();
            Repeater1.DataSource = dt.ogretmenGelenMesajlar(Session["OGRETMEN_NO"].ToString());
            Repeater1.DataBind();
        }
    }
}