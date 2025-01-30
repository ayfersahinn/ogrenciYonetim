<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="duyuruEkle.aspx.cs" Inherits="ogrenciYonetim.duyuruEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form runat="server">
     <div class="form-group">
         <h2 style="color: dimgray">Duyuru Ekleme</h2>
         <br />
          <asp:Label ID="Label2" runat="server" role="alert"  style="display: block;" CssClass="alert alert-danger d-block" Text="Tüm alanları eksiksiz şekilde doldurunuz." Visible="False"></asp:Label>
         <asp:TextBox ID="baslik" runat="server" CssClass="form-control" placeholder="Duyuru başlık"> </asp:TextBox>
         <br />
         <asp:TextBox ID="icerik" runat="server" CssClass="form-control" placeholder="Duyuru içerik" TextMode="MultiLine" Height="100"> </asp:TextBox>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Öğretmen Seçiniz"></asp:Label>
         <br />
         <asp:DropDownList ID="ogrt" runat="server" AppendDataBoundItems="true" CssClass="form-control">

             <asp:ListItem Text="Lütfen öğretmen seçiniz" Value="" Selected="True"></asp:ListItem>
         </asp:DropDownList>
         <br />
        
         <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnKaydet_Click"  />
     </div>
 </form>
</asp:Content>
