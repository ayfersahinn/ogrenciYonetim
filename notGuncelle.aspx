<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="notGuncelle.aspx.cs" Inherits="ogrenciYonetim.notGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form runat="server">
     <div class="form-group">
        
         <asp:Label ID="Label1" runat="server" role="alert"  style="display: block;" CssClass="alert alert-danger d-block" Text="Tüm alanları eksiksiz şekilde doldurunuz." Visible="False"></asp:Label>
          <asp:TextBox ID="notID" runat="server" CssClass="form-control" placeholder="Not ID"> </asp:TextBox>
 <br />
         <asp:TextBox ID="dersAd" runat="server" CssClass="form-control" placeholder="Ders Adı"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ogrID" runat="server" CssClass="form-control" placeholder="Öğrenci ID"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ogrAdSoyad" runat="server" CssClass="form-control" placeholder="Öğrenci Ad Soyad"> </asp:TextBox>
         <br />
         <asp:TextBox ID="sinav1" runat="server" CssClass="form-control" placeholder="Sınav 1"> </asp:TextBox>
         <br />
         <asp:TextBox ID="sinav2" runat="server" CssClass="form-control" placeholder="Sınav 2"> </asp:TextBox>
         <br />
         <asp:TextBox ID="sinav3" runat="server" CssClass="form-control" placeholder="Sınav 3"> </asp:TextBox>
         <br />
         <asp:TextBox ID="ort" runat="server" CssClass="form-control" placeholder="Ortalama"> </asp:TextBox>
         <br />
         <asp:TextBox ID="durum" runat="server" CssClass="form-control" placeholder="Durum"> </asp:TextBox>
         <br />
         <asp:Button ID="btnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-primary" OnClick="btnHesapla_Click" />
         <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
     </div>
 </form>
</asp:Content>
