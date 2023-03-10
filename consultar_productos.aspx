<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="consultar_productos.aspx.cs" Inherits="Base_De_Datos_Y_Busquedas.consultar_productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



    .auto-style9 {
        height: 23px;
        text-align: center;
        width: 601px;
    }
        .auto-style22 {
            font-size: large;
            text-decoration: underline;
            height: 24px;
        }
        .auto-style16 {
        text-align: left;
        font-size: large;
            height: 24px;
        text-decoration: underline;
    }
        .auto-style23 {
            height: 24px;
        }
    .auto-style13 {
        text-align: center;
        width: 601px;
        height: 26px;
    }
    .auto-style18 {
        text-align: right;
        width: 601px;
        height: 26px;
    }
    .auto-style17 {
        text-align: right;
        width: 601px;
        height: 26px;
        font-size: large;
    }
    .auto-style19 {
        height: 26px;
        text-align: center;
    }
        .auto-style21 {
            text-align: left;
        }
        .auto-style20 {
        height: 26px;
        text-align: left;
    }
        .auto-style14 {
        text-align: right;
        width: 601px;
        font-size: large;
    }
    .auto-style10 {
        height: 23px;
        text-align: right;
        width: 601px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style16"><strong>CONSULTAR PRODUCTOS</strong></td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style18">
            <asp:Button ID="BtnBuscar" runat="server" BackColor="#0066FF" ForeColor="White" Height="34px" Text="BUSCAR" Width="105px" OnClick="BtnBuscar_Click" />
            &nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;&nbsp; </td>
        <td class="auto-style19">
            <div class="auto-style21">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </div>
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp; </td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
