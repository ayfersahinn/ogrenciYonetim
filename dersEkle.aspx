<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="dersEkle.aspx.cs" Inherits="ogrenciYonetim.dersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <form runat="server">
    <div class="form-group">
        <h2 style="color: dimgray">Ders Ekleme</h2>
        <br />
        <asp:Label ID="Label2" runat="server" role="alert" Style="display: block;" CssClass="alert alert-danger d-block" Text="Tüm alanları eksiksiz şekilde doldurunuz." Visible="False"></asp:Label>

        <br />
        <asp:Label ID="Label1" runat="server" role="alert" Style="display: block;" CssClass="alert alert-danger d-block" Text="Bu isimde ders adı zaten mevcut. Yeni ders adı giriniz." Visible="False"></asp:Label>

        <br />

        <asp:TextBox ID="dersAd" runat="server" CssClass="form-control" placeholder="Ders Adı"></asp:TextBox>
       <br />
        <asp:Button ID="btnKaydet" runat="server" Text="Ders Ekle" CssClass="btn btn-success" OnClick="btnKaydet_Click"   />
    </div>
</form>
</asp:Content>
