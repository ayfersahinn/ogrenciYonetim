<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ogrenciYonetim.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    </head>
<body>
    <form id="form1" runat="server" defaultbutton="Button1">
        <div style="width:700px; margin:auto;" class="text-center" >
            <br />
            <h2 class="text-center text-bold" style="color:#286090; font-weight:bolder">Öğrenci Yönetim Sistemi Öğrenci Giriş</h2>
            
            <br />
            <div class="m-auto text-center">
            <asp:Image ID="Image1" runat="server" ImageUrl="Dosyalar1/img/students.png" Width="200px" Height="200px" />
            </div>
            <br />
            <br />
            

            <asp:Button ID="ogrtClick" runat="server" Text="Öğretmen" CssClass="btn btn-default "  Width="332px" style="margin-right:30px; font-size: 16px;" OnClick="ogrtClick_Click"/>
            <asp:Button ID="ogrenciclick" runat="server" Text="Öğrenci"  Width="332px" CssClass="btn btn-info " OnClick="ogrenciclick_Click" style="font-size: 16px"/>
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
           
            <div class="text-right">
            <asp:HyperLink ID="sifremiUnuttum" runat="server">Şifremi Unuttum</asp:HyperLink>
           </div><br />

            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-success" Width="700" OnClick="Button1_Click" style=" font-size: 16px;"  />
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
            <br />
            <div class="text-center">
             <asp:Label ID="Label1" runat="server" Text="Hatalı giriş yaptınız." CssClass="text-danger"  Visible="False"></asp:Label></div>
        </div>
    </form>
</body>
</html>
