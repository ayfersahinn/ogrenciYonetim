﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ogrenciYonetim.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">EPOSTA</th>
            <th scope="col">ŞİFRE</th>

        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("OGRID") %></td>
                        <td><%# Eval("OGRAD") %></td>
                        <td><%# Eval("OGRSOYAD") %></td>
                        <td><%# Eval("OGRTEL") %></td>
                        <td><%# Eval("OGRMAIL") %></td>
                        <td><%# Eval("OGRSIFRE") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
               <%-- <th scope="row">1</th>--%>