<%@ Page Title="" Language="C#" MasterPageFile="~/OraleWey.Master" AutoEventWireup="true" CodeBehind="Registrate.aspx.cs" Inherits="OraleWey_Web.Registrate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<script type="text/javascript">
    $(document).ready(function () {
        $("#bt_guardar").click(function () {
            var nombre = $("#nombre").val();

            if (nombre == "") {
                $("#req_nombre").fadeIn();
                return false;
            }

        })

    })

</script>

<form id="form1" runat="server">
    <div class="m-slider">
		<div class="slider-holder">
	        <span class="slider-shadow"></span>
        </div>
	</div>
    <div class="main">
      <section class="cols1">
        <h2 align="center">REGISTRATE</h2>
        <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
        <h6>Completa este formulario y contarás con un domicilio en Estados Unidos para poder realizar todas tus compras.</h6>
        <h6>Los campos con asterisco (<h7>*</h7>) son obligatorios.</h6>

        <div class="col">
            <div class="form1">
                <h8>Datos Personales</h8>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <%--<div id="req_nombre1" class="errores">Campo requerido. Introduzca su nombre.</div>
                <div id="req_apellidos1" class="errores">Campo requerido. Introduzca sus apellidos.</div>
                <div id="req_direccion1" class="errores">Campo requerido. Introduzca su dirección.</div>
                <div id="req_zipcode1" class="errores">Campo requerido. Introduzca su Código Postal</div>
                <div id="req_email1" class="errores">Campo requerido. Introduzca su correo electrónico.</div>
                <div id="req_confemail1" class="errores">Campo requerido. Debe confirmar el correo electrónico.</div>
                <div id="req_usuario1" class="errores">Campo requerido. Introduzca un usuario.</div>
                <div id="req_contrasena1" class="errores">Campo requerido. Debe introducir una contraseña.</div>
                <div id="req_confcontra1" class="errores">Campo requerido. Debe confirmar la contraseña.</div>--%>

                <asp:RequiredFieldValidator ID="req_nombre" runat="server" 
                    ErrorMessage="Campo requerido. Introduzca su nombre." 
                    ControlToValidate="tb_nombre" Display="Dynamic" Font-Size="14px"
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="val_nombre" runat="server" ErrorMessage="El nombre sólo debe contener letras." ControlToValidate="tb_nombre" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_nombre" runat="server" placeholder="Nombre *" name="tb_nombre"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="req_apellidos" runat="server" 
                    ErrorMessage="Campo requerido. Introduzca sus apellidos." 
                    ControlToValidate="tb_apellidos" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="val_apellidos" runat="server" ErrorMessage="Los apellidos sólo deben contener letras." ControlToValidate="tb_apellidos" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_apellidos" runat="server" placeholder="Apellidos *"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="req_direccion" runat="server" 
                    ErrorMessage="Campo requerido. Introduzca sus dirección." 
                    ControlToValidate="tb_direccion" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_direccion" runat="server" placeholder="Dirección *"></asp:TextBox>
                
                <asp:RegularExpressionValidator ID="val_zipcode" runat="server" ErrorMessage="El código postal debe ser de 5 dígitos y contiene sólo números." ControlToValidate="tb_zipcode" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000" ValidationExpression="^(\d{5})(-\d{4})?$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="req_zipcode" runat="server" 
                    ErrorMessage="Campo requerido. Introduzca su código postal." 
                    ControlToValidate="tb_zipcode" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_zipcode" runat="server" placeholder="Código Postal *" MaxLength="5"></asp:TextBox>
                
                <asp:TextBox ID="tb_ciudad" runat="server" placeholder="Ciudad o Provincia *"></asp:TextBox>
                <asp:TextBox ID="tb_estado" runat="server" placeholder="Estado *"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="req_email" runat="server" 
                    ErrorMessage="Campo requerido. Introduzca su correo electrónico." 
                    ControlToValidate="tb_email" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="val_email" runat="server" ErrorMessage="El correo electrónico no es correcto." ControlToValidate="tb_email" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_email" runat="server" placeholder="Correo Electrónico *" 
                    TextMode="Email"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="req_confemail" runat="server" 
                    ErrorMessage="Campo requerido. Debe confirmar el correo electrónico." 
                    ControlToValidate="tb_confemail" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="val_confemail" runat="server" ErrorMessage="Los correos electrónicos no coinciden." ControlToValidate="tb_confemail" ControlToCompare="tb_email" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:CompareValidator>
                
                <asp:TextBox ID="tb_confemail" runat="server" 
                    placeholder="Confirmar Correo Electrónico *" TextMode="Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="val_telefono" runat="server" ErrorMessage="El teléfono no es correcto." ControlToValidate="tb_telfcasa" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                
                <asp:TextBox ID="tb_telfcasa" runat="server" placeholder="Teléfono "></asp:TextBox>
                <asp:TextBox ID="tb_ORW" runat="server" placeholder="" Enabled="False"></asp:TextBox>
                <ul>
                    <li></li>
                </ul>
                <h8>Datos de la Cuenta</h8>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <asp:RequiredFieldValidator ID="req_usuario" runat="server"
                    ErrorMessage="Campo requerido. Introduzca un usuario." 
                    ControlToValidate="tb_user" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_user" runat="server" placeholder="Usuario *"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="req_contrasena" runat="server" 
                    ErrorMessage="Campo requerido. Introduzca una contraseña." 
                    ControlToValidate="tb_contrasena" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_contrasena" runat="server" placeholder="Contraseña *" 
                    TextMode="Password"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="req_confcontra" runat="server" 
                    ErrorMessage="Campo requerido. Debe confirmar la contraseña." 
                    ControlToValidate="tb_confcontra" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas no coinciden." ControlToValidate="tb_confcontra" ControlToCompare="tb_contrasena" Display="Dynamic" Font-Size="14px" 
                    ForeColor="#CC0000"></asp:CompareValidator>
                <asp:TextBox ID="tb_confcontra" runat="server" 
                    placeholder="Confirmar Contraseña *" TextMode="Password"></asp:TextBox>
                

                <asp:Button ID="bt_registrar" runat="server" Text="Guardar" onclick="bt_registrar_Click"/>
                
                
            </div>
            
            <br />
            
        </div>

        

        <div class="cl">&nbsp;&nbsp;&nbsp;</div>
      </section>
    </div>

</form>

</asp:Content>
