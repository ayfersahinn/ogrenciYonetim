using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ogrenciYonetim
{
    public class BasePage : System.Web.UI.Page
    {
        protected string RequiredRole { get; set; } // İstediğimiz rolü burada tanımlarız

        protected override void OnLoad(EventArgs e)
        {
           
            if (RequiredRole == "Ogrenci" && Session["OGRNO"] == null)
            {
                // Öğrenci sayfasına öğretmen erişmeye çalışıyor
                Response.Redirect("~/login.aspx");
            }
            else if (RequiredRole == "Ogretmen" && Session["OGRETMEN_NO"] == null)
            {
                // Öğretmen sayfasına öğrenci erişmeye çalışıyor
                Response.Redirect("~/ogrtLogin.aspx");
            }
            else if (Session["OGRETMEN_NO"] == null && Session["OGRNO"] == null)
            {
                // Hiç giriş yapılmamış
                Response.Redirect("~/login.aspx");
            }
            base.OnLoad(e);
        }
    }

}