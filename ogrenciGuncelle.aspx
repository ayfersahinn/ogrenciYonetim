<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="ogrenciGuncelle.aspx.cs" Inherits="ogrenciYonetim.ogrenciGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="form-group">
            <h2 style="color: dimgray">Öğrenci Güncelleme</h2>
            <br />
            <asp:TextBox ID="ogrID" runat="server" CssClass="form-control" placeholder="Öğrenci ID" Enabled="False"></asp:TextBox>
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
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
        </div>
    </form>
</asp:Content>
