using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class ogretmen : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRTTableAdapter dt = new DataSet1TableAdapters.TBL_OGRTTableAdapter();
            Repeater1.DataSource= dt.OgrtFoto(Session["OGRETMEN_NO"].ToString());
            Repeater1.DataBind();

        }
    }
}