<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ogrenciYonetim.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0066FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:700px; margin:auto;" class="text-center" >
            <br />
            <h2 class="text-center text-bold" style="color:#286090; font-weight:bolder">Öğrenci Yönetim Sistemi </h2>
            
            <br />
            <div class="m-auto text-center">
            <asp:Image ID="Image1" runat="server" ImageUrl="Dosyalar1/teacher.png" Width="200px" Height="200px" />
            </div>
            <div class="text-left">
                <strong>
                <asp:Label for="txtNumara" runat="server" Text="Label" CssClass="auto-style1">Kullanıcı Adı</asp:Label>
                </strong>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div class="text-left">
                <strong>
                <asp:Label for="txtSifre" runat="server" Text="Label" CssClass="auto-style1">Şifre</asp:Label>
                </strong>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />
           
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-primary" Width="700" OnClick="Button1_Click" />
            <br />
            <br />
             <asp:Label ID="Label1" runat="server" Text="Hatalı giriş yaptınız." CssClass="text-danger"  Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
