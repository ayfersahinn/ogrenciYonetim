<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="gelenMesaj.aspx.cs" Inherits="ogrenciYonetim.gelenMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <table class="table table-bordered table-hover">

      <tr>
          <th scope="col">GÖNDEREN NO</th>          
          <th scope="col">GÖNDEREN</th>
          <th scope="col">BAŞLIK</th>
          <th scope="col">İÇERİK</th>
          <th scope="col">TARİH</th>
          <th scope="col">İŞLEMLER</th>

      </tr>

      <tbody>
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <tr>
                      <td><%# Eval("GONDEREN") %></td>                     
                      <td><%# Eval("AD SOYAD") %></td>
                      <td><%# Eval("BASLIK") %></td>
                      <td><%# Eval("ICERIK") %></td>
                      <td><%# Eval("TARIH") %></td>
                      <td class="text-center mx-auto">
                          <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "mesajSil.aspx?MESAJID=" + Eval("MESAJID") + "&tip=gelen&rol=ogretmen" %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>

                      </td>
                  </tr>
              </ItemTemplate>
          </asp:Repeater>
      </tbody>
  </table>
</asp:Content>
