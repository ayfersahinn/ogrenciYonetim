<%@ Page Title="" Language="C#" MasterPageFile="~/ogrenci.Master" AutoEventWireup="true" CodeBehind="ogrenciDefault.aspx.cs" Inherits="ogrenciYonetim.ogrenciDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form runat="server">
     <div class="form-group">
         <h2 style="color: dimgray">Öğrenci Ekleme</h2>
         <br />
        
         <asp:Label ID="Label1" runat="server" role="alert"  style="display: block;" CssClass="alert alert-danger d-block" Text="Tüm alanları eksiksiz şekilde doldurunuz." Visible="False"></asp:Label>
         
         <asp:TextBox ID="ogrAd" runat="server" CssClass="form-control" placeholder="Öğrenci No"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ogrSoyad" runat="server" CssClass="form-control" placeholder="Öğrenci Ad Soyadı"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ogrTel" runat="server" CssClass="form-control" placeholder="Öğrenci Telefon"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ogrMail" runat="server" CssClass="form-control" placeholder="Öğrenci Email"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ogrSifre" runat="server" CssClass="form-control" placeholder="Öğrenci Şifre"> </asp:TextBox>
         <br />
         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Öğrenci Cinsiyet"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ogrFoto" runat="server" CssClass="form-control" placeholder="Öğrenci Fotoğraf Link"> </asp:TextBox>
         <br />
         <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success"  />
     </div>
 </form>
</asp:Content>
