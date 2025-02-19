<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="istatistikler.aspx.cs" Inherits="ogrenciYonetim.istatistikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="form-group">
            <h2 style="color: dimgray">İstatistikler</h2>
            <br />
            <asp:TextBox ID="ist" runat="server" CssClass="form-control" placeholder="Toplam öğrenci sayısı: " Enabled="False"> </asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Toplam öğretmen sayısı: " Enabled="False"> </asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Toplam ders sayısı: " Enabled="False"> </asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="En başarılı ders" Enabled="False"> </asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Toplam atılan mesaj sayısı: " Enabled="False"> </asp:TextBox>
            <br />

            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Toplam duyuru sayısı: " Enabled="False"> </asp:TextBox>
            <br />
             <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Matematik not ortalaması: " Enabled="False"> </asp:TextBox>
 <br />
             <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Türkçe not ortalaması: " Enabled="False"> </asp:TextBox>
 <br />

        </div>
    </form>
</asp:Content>
