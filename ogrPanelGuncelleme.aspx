<%@ Page Title="" Language="C#" MasterPageFile="~/ogrenci.Master" AutoEventWireup="true" CodeBehind="ogrPanelGuncelleme.aspx.cs" Inherits="ogrenciYonetim.ogrPanelGuncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <form runat="server">
    <div class="form-group">
        <h2 style="color: dimgray">Öğrenci Bilgileri Güncelleme</h2>
        <br />
       
        <asp:Label ID="Label1" runat="server" role="alert"  style="display: block;" CssClass="alert alert-danger d-block" Text="Tüm alanları eksiksiz şekilde doldurunuz." Visible="False"></asp:Label>
         <asp:Label for="ogrNo" runat="server" Text="Label">Öğrenci No</asp:Label>                 
        <asp:TextBox ID="ogrNo" runat="server" CssClass="form-control" placeholder="Öğrenci No" Enabled="False"> </asp:TextBox>
        <br />
         <asp:Label for="ogrAdSoyad" runat="server" Text="Label">Öğrenci Ad Soyad</asp:Label>         
        <asp:TextBox ID="ogrAdSoyad" runat="server" CssClass="form-control" placeholder="Öğrenci Ad Soyadı" Enabled="False"> </asp:TextBox>
        <br />
         <asp:Label for="ogrTel" runat="server" Text="Label">Öğrenci Telefon</asp:Label>         
        <asp:TextBox ID="ogrTel" runat="server" CssClass="form-control" placeholder="Öğrenci Telefon" > </asp:TextBox>
        <br />
         <asp:Label for="ogrMail" runat="server" Text="Label">Öğrenci Email</asp:Label>         
        <asp:TextBox ID="ogrMail" runat="server" CssClass="form-control" placeholder="Öğrenci Email" > </asp:TextBox>
        <br />
         <asp:Label for="ogrSifre" runat="server" Text="Label">Öğrenci Şifre</asp:Label>
        <asp:TextBox ID="ogrSifre" runat="server" CssClass="form-control" placeholder="Öğrenci Şifre"> </asp:TextBox>
        <br />
        <asp:Label for="ogrFoto" runat="server" Text="Label">Öğrenci Fotoğrafı</asp:Label>
        <asp:TextBox ID="ogrFoto" runat="server" CssClass="form-control" placeholder="Öğrenci Fotoğraf Link"> </asp:TextBox>
        <br />
        <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnKaydet_Click" />
    </div>
        </form>
</asp:Content>
