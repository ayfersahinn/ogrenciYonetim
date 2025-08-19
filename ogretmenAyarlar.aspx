<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="ogretmenAyarlar.aspx.cs" Inherits="ogrenciYonetim.ogretmenAyarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <form runat="server">
<div class="form-group">
    <h2 style="color: dimgray">Öğretmen Bilgileri Güncelleme</h2>
    <br />
   
    <asp:Label ID="Label1" runat="server" role="alert"  style="display: block;" CssClass="alert alert-danger d-block" Text="Tüm alanları eksiksiz şekilde doldurunuz." Visible="False"></asp:Label>
     <asp:Label for="ogrtNo" runat="server" Text="Label">Öğretmen No</asp:Label>                 
    <asp:TextBox ID="ogrtNo" runat="server" CssClass="form-control" placeholder="Öğretmen No" Enabled="False"> </asp:TextBox>
    <br />
     <asp:Label for="ogrtAdSoyad" runat="server" Text="Label">Öğretmen Ad Soyad</asp:Label>   <asp:TextBox ID="ogrtAdSoyad" runat="server" CssClass="form-control" placeholder="Öğretmen Ad Soyad" Enabled="False"> </asp:TextBox>
    <br />
    
  <asp:Label for="ogrtBrans" runat="server" Text="Label">Öğretmen Branş</asp:Label>   <asp:TextBox ID="ogrtBrans" runat="server" CssClass="form-control" placeholder="Öğretmen Branş" Enabled="False"> </asp:TextBox>
<br />
     
    <asp:Label for="ogrtFoto" runat="server" Text="Label">Öğretmen Fotoğrafı</asp:Label>
    <asp:TextBox ID="ogrtFoto" runat="server" CssClass="form-control" placeholder="Öğretmen Fotoğraf Link" Enabled="False"></asp:TextBox>
    <br />
     <asp:Label for="ogrtSifre" runat="server" Text="Label">Öğretmen Şifre</asp:Label>
<asp:TextBox ID="ogrtSifre" runat="server" CssClass="form-control" placeholder="Öğretmen Şifre" Enabled="False"></asp:TextBox>
<br />
    <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click"  />
</div>
    </form>
</asp:Content>
