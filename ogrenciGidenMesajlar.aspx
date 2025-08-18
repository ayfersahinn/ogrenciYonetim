<%@ Page Title="" Language="C#" MasterPageFile="~/ogrenci.Master" AutoEventWireup="true" CodeBehind="ogrenciGidenMesajlar.aspx.cs" Inherits="ogrenciYonetim.ogrenciGidenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <h2 style="color: dimgray">Giden Mesajlar</h2>
    <br />

            <table class="table table-bordered table-hover">

    <tr>
        <th scope="col">ALICI NO</th>        
        <th scope="col">ALICI</th>
        <th scope="col">BAŞLIK</th>
        <th scope="col">İÇERİK</th>
        <th scope="col">TARİH</th>
        <th scope="col">İŞLEMLER</th>
        

    </tr>

    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ALICI") %></td>                   
                    <td><%# Eval("AD SOYAD") %></td>
                    <td><%# Eval("BASLIK") %></td>
                    <td><%# Eval("ICERIK") %></td>
                    <td><%# Eval("TARIH") %></td>
                    <td class="text-center mx-auto">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "mesajSil.aspx?MESAJID=" + Eval("MESAJID") + "&tip=giden&rol=ogrenci" %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>

                    </td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
</asp:Content>
