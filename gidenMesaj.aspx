﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="gidenMesaj.aspx.cs" Inherits="ogrenciYonetim.gidenMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <table class="table table-bordered table-hover">

    <tr>
        <th scope="col">ID</th>
        <th scope="col">ALICI</th>
        <th scope="col">ÖĞRENCİ AD SOYAD</th>
        <th scope="col">BAŞLIK</th>
        <th scope="col">İÇERİK</th>
        <th scope="col">TARİH</th>
        <th scope="col">İŞLEMLER</th>

    </tr>

    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("MESAJID") %></td>
                    <td><%# Eval("ALICI") %></td>
                    <td><%# Eval("ÖGRENCİ AD SOYAD") %></td>
                    <td><%# Eval("BASLIK") %></td>
                    <td><%# Eval("ICERIK") %></td>
                    <td><%# Eval("TARIH") %></td>
                    
                   
                    <%--<td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "ogrenciSil.aspx?OGRID=" + Eval("OGRID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "ogrenciGuncelle.aspx?OGRID=" + Eval("OGRID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>--%>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
</asp:Content>
