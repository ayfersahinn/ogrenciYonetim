using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenciYonetim
{
    public partial class istatistikler : BasePage
    {
        public istatistikler()
        {
            RequiredRole = "Ogretmen";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            ist.Text = "Toplam öğrenci sayısı: "+dt.ist1().ToString();
            TextBox1.Text = "Toplam öğretmen sayısı: "+ dt.ist2().ToString();
            TextBox2.Text = "Toplam ders sayısı: " + dt.ist3().ToString();
            TextBox3.Text = "Matematik dersinden Sınav1 için en yüksek not alan öğrenci: "+ dt.ist4().ToString();
            TextBox4.Text = "Kimya dersinden Sınav1 için en yüksek not alan öğrenci: "+ dt.ist5().ToString();
            TextBox5.Text = "Matematik dersi sınav-1 ortalaması: "+ dt.ist6().ToString();
            TextBox6.Text = "Matematik dersinden geçenlerin sayısı: "+ dt.ist7().ToString();
            TextBox7.Text = "Kimya dersinden kalanların sayısı: "+ dt.ist8().ToString();
        }
    }
}