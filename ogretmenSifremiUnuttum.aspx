<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogretmenSifremiUnuttum.aspx.cs" Inherits="ogrenciYonetim.ogretmenSifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title>Şifremi Unuttum</title>
    </head>
<body>
    <form id="form2" runat="server" defaultbutton="Button1">
        <div style="width:700px; margin:auto;" class="text-center" >
            <br />
            <h2 class="text-center text-bold" style="color:#286090; font-weight:bolder">Öğretmen Şifre Yenileme </h2>
            
            <br />         
            <br />
           
            <div class="text-left">
                <strong>
                <asp:Label for="txtNumara" runat="server" Text="Label" CssClass="auto-style2">Kullanıcı Adı</asp:Label>
                </strong>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div class="text-left">
                <strong>
                <asp:Label for="txtSifre" runat="server" Text="Label" CssClass="auto-style2">Şifre</asp:Label>
                </strong>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div class="text-left">
                <strong>
                    <asp:Label for="txtSifre2" runat="server" Text="Label" CssClass="auto-style2">Şifre Tekrar</asp:Label>
                </strong>
                <asp:TextBox ID="txtSifre2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="btn btn-success" Width="700" Style="font-size: 16px;" OnClick="Button1_Click" />
            <br />
            <style type="text/css">
                 #<%= Button1.ClientID %>:focus {
                      outline: none;
                      box-shadow: none;
                  }
                 #<%= Button1.ClientID %> {
                      background-color: #5CB85C; 
                      border-color: #4CAE4C;
                  }

                  #<%= Button1.ClientID %>:hover {
                      background-color: #4CAE4C;
                      border-color: #398439;
                  }

                .auto-style2 {
                    color: #0066FF;
                    font-size: 16px;
                }

             </style>
            <br />
            <div class="text-center">
                <asp:Label ID="Label1" runat="server" Text="Şifreler eşleşmiyor." CssClass="text-danger mx-auto" Style="text-align: center" Visible="False"></asp:Label>
            </div>
            <div class="text-center">
                <asp:Label ID="Label2" runat="server" Text="Kullanıcı adı bulunamadı." CssClass="text-danger mx-auto" Style="text-align: center" Visible="False"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>

  
