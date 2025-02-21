<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ogrenciYonetim.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:700px; margin:auto;" >
            <br />
            <h3 class="text-center">Öğrenci Yönetim Kullanıcı Girişi</h3>
            
            <br />
            <div class="m-auto text-center">
            <asp:Image ID="Image1" runat="server" ImageUrl="Dosyalar1/teacher.png" Width="200px" Height="200px" />
            </div>
            <div>
                <asp:Label for="txtNumara" runat="server" Text="Label">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSifre" runat="server" Text="Label">Şifre</asp:Label>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-primary" Width="700" />
        </div>
    </form>
</body>
</html>
