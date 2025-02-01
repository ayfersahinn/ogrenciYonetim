<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="notListesi.aspx.cs" Inherits="ogrenciYonetim.notListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="table table-bordered table-hover">

     <tr>
         <th scope="col">NOT ID</th>
         <th scope="col">ID</th>
         <th scope="col">ÖĞRENCİ AD SOYAD</th>
         <th scope="col">DERS ADI</th>
         <th scope="col">SINAV 1</th>
         <th scope="col">SINAV 2</th>
         <th scope="col">SINAV 3</th>
         <th scope="col">ORTALAMA</th>
         <th scope="col">DURUM</th>
         <th scope="col">GÜNCELLE</th>

     </tr>

     <tbody>
         <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
                 <tr>
                     <td><%# Eval("NOTID") %></td>
                     <td><%# Eval("OGRID") %></td>
                     <td><%# Eval("OGRENCIADSOYAD") %></td>
                     <td><%# Eval("DERSAD") %></td>
                     <td><%# Eval("SINAV1") %></td>
                     <td><%# Eval("SINAV2") %></td>
                     <td><%# Eval("SINAV3") %></td>
                     <td><%# Eval("ORT") %></td>
                     <td><%# Eval("DURUM") %></td>
                     <td>
                         
                         <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "notGuncelle.aspx?NOTID=" + Eval("NOTID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                     </td>
                 </tr>
             </ItemTemplate>
         </asp:Repeater>
     </tbody>
 </table>
</asp:Content>
