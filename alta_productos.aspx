<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="alta_productos.aspx.cs" Inherits="Base_De_Datos_Y_Busquedas.alta_productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



    .auto-style9 {
        height: 23px;
        text-align: center;
        width: 601px;
    }
    .auto-style16 {
        text-align: left;
        font-size: large;
        text-decoration: underline;
    }
    .auto-style13 {
        text-align: center;
        width: 601px;
        height: 26px;
    }
    .auto-style17 {
        text-align: right;
        width: 601px;
        height: 26px;
        font-size: large;
    }
    .auto-style10 {
        height: 23px;
        text-align: right;
        width: 601px;
    }
        .auto-style18 {
            height: 23px;
            text-align: left;
        }
        .auto-style19 {
            font-size: large;
            height: 24px;
        }
        .auto-style20 {
            height: 24px;
        }
        .auto-style21 {
            font-size: large;
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
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style16"><strong>ALTA PRODUCTOS</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style17">Producto:&nbsp;&nbsp; </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Producto requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style17">Descripción:&nbsp;&nbsp; </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Descripción requerida" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style10">Stock:&nbsp;&nbsp; </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" type="number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Stock requerida" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style10">PU:&nbsp;&nbsp; </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px" type="number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="* PU requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style6">
                <asp:Button ID="BtnAceptar" runat="server" BackColor="#0066FF" ForeColor="White" Height="34px" Text="ACEPTAR" Width="105px" OnClick="BtnAceptar_Click"  />
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style19">
                            &nbsp;</td>
                        <td class="auto-style20"></td>
                        <td class="auto-style20"></td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
