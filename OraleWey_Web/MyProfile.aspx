<%@ Page Title="" Language="C#" MasterPageFile="~/OraleWey.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="OraleWey_Web.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 137px;
        }
        .style3
        {
        }
        .style4
        {
            width: 137px;
            height: 24px;
        }
        .style5
        {
            height: 24px;
        }
        .style6
        {
            width: 143px;
        }
        .style7
        {
            height: 24px;
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                Ficha del Cliente:&nbsp;
                                  <asp:Label ID="Lb_Nombre" runat="server" Font-Size="Medium" ForeColor="Black" 
                                      Text="Label"></asp:Label>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; De 
                casillero No:&nbsp;&nbsp;
                                  <asp:Label ID="Lb_ORW" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                      ForeColor="Red" Text="ORW"></asp:Label>
                                  <br />
                                  <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Nombre:</td>
            <td>
                &nbsp;<asp:TextBox ID="TextBoxNom" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Apellido:</td>
            <td>
                <asp:TextBox ID="TextBoxApell" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Direccion:</td>
            <td>
                <asp:TextBox ID="TextBoxDir" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Codigo Postal</td>
            <td>
                <asp:TextBox ID="TextBoxZc" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Ciudad:</td>
            <td>
                
                <asp:TextBox ID="TextBoxCiudad" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Estado:</td>
            <td>
                <asp:TextBox ID="TextBoxEstado" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Email</td>
            <td>
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                Telefono:</td>
            <td>
                
                <asp:TextBox ID="TextBoxTelef" runat="server" Width="194px"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lb_id" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="b_Edit" runat="server" onclick="B_Edit_Click" Text="Edit" 
                    Width="65px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="b_Guardar" runat="server" onclick="b_Guardar_Click" 
                    Text="Guardar" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
