<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="duyuruListesi.aspx.cs" Inherits="ogrenciYonetim.duyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">

    <tr>
        <th scope="col">ID</th>
        <th scope="col">BAŞLIK</th>
        <th scope="col">İÇERİK</th>
        <th scope="col">ÖĞRETMEN</th>
        <th scope="col">İŞLEMLER</th>

    </tr>

    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("DUYURUID") %></td>
                    <td><%# Eval("DUYURUBASLIK") %></td>
                    <td><%# Eval("DUYURUICERIK") %></td>
                    <td><%# Eval("DUYURUOGRT") %></td>
                    
                    <td>
                        <asp:HyperLink ID="HyperLink1"  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2"  runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
</asp:Content>
<%--NavigateUrl='<%# "ogrenciSil.aspx?OGRID=" + Eval("OGRID") %>'--%>