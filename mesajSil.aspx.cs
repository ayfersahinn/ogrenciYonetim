using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class mesajSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJTableAdapter();
            int id = Convert.ToInt32(Request.QueryString["MESAJID"]);
            dt.mesajSil(id);

            string tip = Request.QueryString["tip"];
            string rol = Request.QueryString["rol"];
            if (rol == "ogrenci")
            {
                if (tip == "gelen")
                    Response.Redirect("ogrenciGelenMesajlar.aspx");
                else
                    Response.Redirect("ogrenciGidenMesajlar.aspx");
            }
            else if (rol == "ogretmen")
            {
                if (tip == "gelen")
                    Response.Redirect("gelenMesaj.aspx");
                else
                    Response.Redirect("gidenMesaj.aspx");
            }
        }
    }
}