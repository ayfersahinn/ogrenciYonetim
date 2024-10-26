<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="ogrenciEkle.aspx.cs" Inherits="ogrenciYonetim.ogrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="form-group">
            <h2 style="color: dimgray">Öğrenci Ekleme</h2>
            <br />
            <asp:TextBox ID="ogrAd" runat="server" CssClass="form-control" placeholder="Öğrenci Adı"> </asp:TextBox>
            <br />
            <asp:TextBox ID="ogrSoyad" runat="server" CssClass="form-control" placeholder="Öğrenci Soyadı"> </asp:TextBox>
            <br />
            <asp:TextBox ID="ogrTel" runat="server" CssClass="form-control" placeholder="Öğrenci Telefon"> </asp:TextBox>
            <br />
            <asp:TextBox ID="ogrMail" runat="server" CssClass="form-control" placeholder="Öğrenci Email"> </asp:TextBox>
            <br />
            <asp:TextBox ID="ogrSifre" runat="server" CssClass="form-control" placeholder="Öğrenci Şifre"> </asp:TextBox>
            <br />
            <asp:TextBox ID="ogrFoto" runat="server" CssClass="form-control" placeholder="Öğrenci Fotoğraf Link"> </asp:TextBox>
            <br />
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnKaydet_Click" />
        </div>
    </form>
</asp:Content>
