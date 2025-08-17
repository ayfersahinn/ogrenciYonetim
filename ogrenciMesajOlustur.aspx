<%@ Page Title="" Language="C#" MasterPageFile="~/ogrenci.Master" AutoEventWireup="true" CodeBehind="ogrenciMesajOlustur.aspx.cs" Inherits="ogrenciYonetim.ogrenciMesajOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <form runat="server">
    <div class="form-group">
        <h2 style="color: dimgray">Mesaj Oluştur</h2>
        <br />
        <asp:Label ID="Label1" runat="server" role="alert" Style="display: block;" CssClass="alert alert-danger d-block" Text="Bu isimde alıcı mevcut değildir." Visible="False"></asp:Label>

<br />
        <asp:TextBox ID="gonderen" runat="server" CssClass="form-control" placeholder="Gönderen" Enabled="False"> </asp:TextBox>
        <br />
        <asp:TextBox ID="alici" runat="server" CssClass="form-control" placeholder="Alıcı"> </asp:TextBox>
        <br />
        <asp:TextBox ID="baslik" runat="server" CssClass="form-control" placeholder="Mesaj Başlık" > </asp:TextBox>
        <br />
        <asp:TextBox ID="icerik" runat="server" CssClass="form-control" placeholder="Mesaj İçerik" TextMode="MultiLine" Height="100"> </asp:TextBox>
        <br />
        <asp:Button ID="btn_mesaj_gonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-success" OnClick="btn_mesaj_gonder_Click"  />
       
    </div>
</form>
</asp:Content>
