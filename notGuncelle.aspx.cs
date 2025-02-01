using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class notGuncelle : System.Web.UI.Page
    {
        
        DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                nid = Convert.ToInt32(Request.QueryString["NOTID"]);
                notID.Text = nid.ToString();
                dersAd.Text = dt.notGetir2(nid)[0].DERSAD;
                ogrID.Text = dt.notGetir2(nid)[0].OGRID.ToString();
                ogrAdSoyad.Text = dt.notGetir2(nid)[0].OGRENCIADSOYAD;
                sinav1.Text = dt.notGetir2(nid)[0].SINAV1.ToString();
                sinav2.Text = dt.notGetir2(nid)[0].SINAV2.ToString();
                sinav3.Text = dt.notGetir2(nid)[0].SINAV3.ToString();
                ort.Text = dt.notGetir2(nid)[0].ORT.ToString();
                durum.Text = dt.notGetir2(nid)[0].DURUM.ToString();

            }
            
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id= Convert.ToInt32(Request.QueryString["NOTID"]);
            if(string.IsNullOrWhiteSpace(sinav1.Text) || string.IsNullOrWhiteSpace(sinav2.Text) || string.IsNullOrWhiteSpace(sinav3.Text))
            {
                Label1.Visible = true;
            }
            else
            {
                dt.notGuncelle(Convert.ToByte( sinav1.Text),Convert.ToByte(sinav2.Text), Convert.ToByte(sinav3.Text), Convert.ToDecimal(ort.Text), Convert.ToBoolean(durum.Text),id);
                Response.Redirect("notListesi.aspx");
            }
          
        }

        protected void btnHesapla_Click(object sender, EventArgs e)
        {
            double sinv1, sinv2, sinv3;
            double ortalama;
            sinv1 = Convert.ToInt32( sinav1.Text);
            sinv2 = Convert.ToInt32( sinav2.Text);
            sinv3 = Convert.ToInt32( sinav3.Text);
            
            ortalama=(sinv1+sinv2+ sinv3)/3;
            ort.Text = ortalama.ToString("0.00");

            if (ortalama > 50)
            {
                durum.Text = "True";
            }
            else
            {
                durum.Text = "False";
            }
        }
    }
}