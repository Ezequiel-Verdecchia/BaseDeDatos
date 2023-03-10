<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="alta_clientes.aspx.cs" Inherits="Base_De_Datos_Y_Busquedas.alta_clientes" %>
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
        <td class="auto-style16"><strong>ALTA CLIENTES</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style17">Cliente:&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Cliente requerido" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style17">Cuit:&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox2" runat="server" Width="200px" type="number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Cuit requerido" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style6">
            <asp:Button ID="BtnAceptar" runat="server" BackColor="#0066FF" ForeColor="White" Height="34px" Text="ACEPTAR" Width="105px" OnClick="BtnAceptar_Click" />
        </td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
