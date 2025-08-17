using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ogrenciYonetim
{
    public partial class grafikler : BasePage
    {
        public grafikler()
        {
            RequiredRole = "Ogretmen";
        }
        SqlConnection conn=new SqlConnection(@"Data Source=DESKTOP-5ANGUIR\SQLEXPRESS02;Initial Catalog=ogrenciYonetim;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            //komut1
            conn.Open();
            SqlCommand cmd = new SqlCommand("execute graf1",conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Chart1.Series["Dersler"].Points.AddXY(rdr[0], rdr[1]);
            }
           conn.Close();

            //komut2
            conn.Open();
            SqlCommand cmd2 = new SqlCommand("execute graf2", conn);
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            while (rdr2.Read())
            {
                Chart2.Series["Cinsiyet"].Points.AddXY(rdr2[0], rdr2[1]);
            }
            conn.Close();

            //komut3
            conn.Open();
            SqlCommand cmd3 = new SqlCommand("execute graf3", conn);
            SqlDataReader rdr3 = cmd3.ExecuteReader();
            while (rdr3.Read())
            {
                Chart3.Series["Ogretmen"].Points.AddXY(rdr3[0], rdr3[1]);
            }
            conn.Close();


            
            //dersleri comboboxa atama
            if (!IsPostBack)
            {
              DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
                DropDownList1.DataSource = dt.dersListesi();
                DropDownList1.DataTextField = "DERSAD";
                DropDownList1.DataValueField = "DERSID";
                DropDownList1.DataBind();
            }
           
           

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //komut4
            conn.Open();
            SqlCommand cmd4 = new SqlCommand("select (TBL_OGRENCI.OGRAD+' '+ TBL_OGRENCI.OGRSOYAD) as 'OgrenciAdSoyad', TBL_NOT.SINAV1 from TBL_NOT inner join TBL_OGRENCI on TBL_OGRENCI.OGRID=TBL_NOT.OGRID where TBL_NOT.DERSID=@dersId", conn);
            cmd4.Parameters.AddWithValue("@dersId", DropDownList1.SelectedValue);
            SqlDataReader rdr4 = cmd4.ExecuteReader();
            Chart4.Series["dersOgrenci"].Points.Clear(); // Önce eski verileri temizle
            while (rdr4.Read())
            {
                Chart4.Series["dersOgrenci"].Points.AddXY(rdr4[0], rdr4[1]);
            }
            conn.Close();
        }
    }
}