<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="dersListesi.aspx.cs" Inherits="ogrenciYonetim.dersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <table class="table table-bordered table-hover">

    <tr>
        <th scope="col">ID</th>
        <th scope="col">DERS ADI</th>
        <th scope="col">İŞLEMLER</th>

    </tr>

    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("DERSID") %></td>
                    <td><%# Eval("DERSAD") %></td>
                    
                    
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "dersSil.aspx?DERSID=" + Eval("DERSID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "dersGuncelle.aspx?DERSID=" + Eval("DERSID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </tbody>
</table>
    <br />
    <asp:HyperLink ID="btnEkle" runat="server" NavigateUrl="~/dersEkle.aspx" CssClass="btn btn-primary">Ders Ekle</asp:HyperLink>
</asp:Content>
