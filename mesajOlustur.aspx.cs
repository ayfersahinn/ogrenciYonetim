using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class mesajOlustur : BasePage
    {
        public mesajOlustur()
        {
            RequiredRole = "Ogretmen";
        }
        DataSet1TableAdapters.TBL_MESAJTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            gonderen.Text = "1111";
        }

        protected void btn_mesaj_gonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt2 = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            DataSet1TableAdapters.TBL_OGRTTableAdapter dt3 = new DataSet1TableAdapters.TBL_OGRTTableAdapter();
            int checkAlici = Convert.ToInt32(dt2.ogrVarMi(alici.Text));
            int ogrtAlici = Convert.ToInt32(dt3.ogrtVarMi(alici.Text));

            if (checkAlici > 0 || ogrtAlici > 0)
            {
                dt.mesajOlustur(gonderen.Text, alici.Text, baslik.Text, icerik.Text);
                Response.Redirect("gidenMesaj.aspx");
            }
            else
            {
                Label1.Visible = true;
            }
        

    }
    }
}