using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class Default : BasePage
    {
        public Default()
        {
            RequiredRole = "Ogretmen";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            Repeater1.DataSource = dt.OgrenciListesi();
            Repeater1.DataBind();

        }
    }
}