<%@ Page Title="" Language="C#" MasterPageFile="~/OraleWey.Master" AutoEventWireup="true" CodeBehind="PreAlerta.aspx.cs" Inherits="OraleWey_Web.PreAlerta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="style17">Bienvenido a OraleWey</span>&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Lb_Nombre" runat="server" Font-Size="Medium" ForeColor="Black" 
                                      Text="Label"></asp:Label>
                                  &nbsp;<span class="style18">,</span>&nbsp;&nbsp;&nbsp;&nbsp; <span class="style18">Su numero Casillero 
                                  es:</span>&nbsp;&nbsp;&nbsp; &nbsp;
                                  <asp:Label ID="Lb_ORW" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                      ForeColor="Red" Text="ORW"></asp:Label>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                Fecha:</td>
            <td class="style3">
                <asp:TextBox ID="tb_Fecha" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="NuevaC" runat="server" CssClass="style9" onclick="NuevaC_Click" 
                    Text="Nueva Compra" Width="150px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                Tienda:</td>
            <td class="style3">
                <asp:TextBox ID="tb_Tienda" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                Descripcion:</td>
            <td class="style3">
                <asp:TextBox ID="tb_Descripcion" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Guardar" runat="server" CssClass="style9" 
                    onclick="Guardar_Click" Text="Guardar" Width="150px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                Tracking No:</td>
            <td class="style3">
                <asp:TextBox ID="tb_Tracking" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                Fecha Entrega en Miami:</td>
            <td class="style3">
                <asp:TextBox ID="tb_FechaEntrega" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                Valor:</td>
            <td class="style3">
                <asp:TextBox ID="tb_Valor" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="id_Cliente" runat="server" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:TextBox ID="tb_user" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 167px;
        }
        .style3
        {
            width: 328px;
        }
        .style4
        {
            width: 167px;
            height: 24px;
        }
        .style5
        {
            width: 328px;
            height: 24px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            width: 40px;
        }
        .style8
        {
            width: 40px;
            height: 24px;
        }
        .style9
        {
            color: #800000;
        }
        .style10
        {
            width: 167px;
            color: #800000;
        }
    </style>
</asp:Content>

