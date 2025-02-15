<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen.Master" AutoEventWireup="true" CodeBehind="grafikler.aspx.cs" Inherits="ogrenciYonetim.grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 277px;
        }
        th, td{
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <h2 style="color: dimgray">Grafikler</h2>
<br />
        <table class="nav-justified table-bordered">
            <tr>
                <td class="auto-style1">
                    Derse kayıtlı öğrenci sayısı dağılımı
                    <asp:Chart ID="Chart1" runat="server"  OnLoad="Chart1_Load" Width="500px">
                        <series>
                            <asp:Series Name="Dersler" ChartType="Pie" ChartArea="ChartArea1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td class="auto-style1">
                    Tüm öğrencilerin cinsiyet oranı
                    <asp:Chart ID="Chart2" runat="server" OnLoad="Chart1_Load" Width="500px">
                        <series>
                            <asp:Series Name="Cinsiyet">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                    Dersi veren öğretmen sayısı dağılımı
                    <asp:Chart ID="Chart3" runat="server"  OnLoad="Chart1_Load" Width="500px">
                        <series>
                            <asp:Series Name="Ogretmen" ChartType="Doughnut" ChartArea="ChartArea1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                    Derse göre sınav-1 öğrenci puanları dağılımı
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AppendDataBoundItems="true" >
             <asp:ListItem Text="Lütfen ders seçiniz" Value="" Selected="True"></asp:ListItem>

                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="İstatistik Getir" CssClass="btn btn-success" OnClick="Button1_Click" />
                    <asp:Chart ID="Chart4" runat="server"  OnLoad="Chart1_Load" Width="500px">
                        <series>
                            <asp:Series Name="dersOgrenci" ChartArea="ChartArea1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
