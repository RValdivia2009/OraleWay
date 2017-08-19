<%@ Page Title="" Language="C#" MasterPageFile="~/OraleWey.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="OraleWey_Web.Contactenos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <%--<table class="style1">
        <tr>
            <td class="style2" rowspan="5">
            <marquee behavior="" direction="up" scrollamount="1" 
                    style="font-weight: 700; width: 169px; height: 42px; color: #FF0000; font-size: x-large;"><font color="red">Contactenos:</font></marquee>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Nombre:
            </td>
            <td class="style3">
                <asp:TextBox ID="txtNombre" runat="server" BackColor="#D9FFFF" Width="242px" 
                    Wrap="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                Email:</td>
            <td class="style3">
                <asp:TextBox ID="txtEmail" runat="server" BackColor="#D9FFFF" 
                    style="text-align: left" Width="186px" Wrap="False"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblMensajeError" runat="server" ForeColor="#0033CC" 
                    style="font-weight: 700; font-size: small" Text="Lavel"></asp:Label>
            </td>
        </tr>
        <tr class="style4">
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                Telefono:</td>
            <td class="style3">
                <asp:TextBox ID="txtTelefono" runat="server" BackColor="#D9FFFF" Width="186px" 
                    Wrap="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                Asunto:</td>
            <td class="style3">
                <asp:TextBox ID="txtTitulo" runat="server" BackColor="#D9FFFF" Width="329px" 
                    Wrap="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                Mensaje:</td>
            <td class="style3">
                <asp:TextBox ID="txtMensaje" runat="server" AutoCompleteType="Disabled" 
                    BackColor="#D9FFFF" Height="84px" TextMode="MultiLine" Width="337px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click" 
                    style="font-weight: 700" Text="Enviar" Width="127px" />
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="Reenvio" runat="server" Checked="True" 
                    style="font-size: small; color: #993300; font-weight: 700" 
                    Text="  Desea Recibir copia del mensaje?." />
            </td>
        </tr>
    </table>--%>
    <div class="m-slider">
		<div class="slider-holder">
	        <span class="slider-shadow"></span>
        </div>
	</div>
    <div class=main>
        <section class=cols1>
            <h2 align="center">CONTACTANOS</h2>
            <ul>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <h6>Contacta con nosotros en cualquier momento.</h6>
            <h6>Los campos con asterisco (<h7>*</h7>) son obligatorios.</h6>
            <div class="col">
                <div class="form1">
                    <asp:Label ID="lblMensajeError" runat="server" ForeColor="#0033CC" 
                    style="font-weight: 700; font-size: small" Text="Lavel"></asp:Label>

                    <asp:RequiredFieldValidator ID="req_nombrecont" runat="server" ErrorMessage="Introduzca su nombre." ControlToValidate="txtNombre" Display="Dynamic" Font-Size="14px" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="val_nombrecont" runat="server" ErrorMessage="El nombre sólo debe contener letras." ControlToValidate="txtNombre" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    
                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre *" 
                        ControlToValidate="txtNombre"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="req_emailcont" runat="server" ErrorMessage="Introduzca su correo electrónico." ControlToValidate="txtEmail" Display="Dynamic" Font-Size="14px" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="val_emailcont" runat="server" ErrorMessage="El correo electrónico no es correcto." ControlToValidate="txtEmail" Display="Dynamic" Font-Size="14px" 
                        ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Correo Electrónico *"></asp:TextBox>
                    
                    <asp:RegularExpressionValidator ID="val_telfcont" runat="server" ErrorMessage="El teléfono no es correcto." ControlToValidate="txtTelefono" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                    
                    <asp:TextBox ID="txtTelefono" runat="server" placeholder="Teléfono"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="req_asunto" runat="server" ErrorMessage="Introduzca el asunto de su mensaje." ControlToValidate="txtTitulo" Display="Dynamic" Font-Size="14px" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="txtTitulo" runat="server" placeholder="Asunto *"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="req_mensaje" runat="server" ErrorMessage="Describa su mensaje." ControlToValidate="txtMensaje" Display="Dynamic" Font-Size="14px" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="txtMensaje" runat="server" AutoCompleteType="Disabled" 
                        Height="100px" TextMode="MultiLine" Width="100%" placeholder="Mensaje *" 
                        CssClass="tb_mensaje" Font-Bold="True"></asp:TextBox>
                    
                </div>
                <div class="form2">
                <asp:CheckBox ID="Reenvio" runat="server" Checked="True" 
                        Text="   ¿Desea recibir copia del mensaje?" Font-Size="15px" 
                        ForeColor="#003300"/>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                    <asp:Button ID="bt_enviar" runat="server" Height="31px" onclick="Button1_Click" 
                    style="font-weight: 700" Text="Enviar" Width="150px" Font-Size="15px" />
                    </div>
            </div>
            
            <div class="cl">&nbsp;&nbsp;&nbsp;</div>
        </section>
    </div>
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
            width: 151px;
        }
        .style3
        {
            width: 247px;
        }
        .style4
        {
            font-size: xx-small;
        }
        .style5
        {
            height: 27px;
        }
        .style6
        {
            width: 247px;
            height: 27px;
        }
    </style>
</asp:Content>

