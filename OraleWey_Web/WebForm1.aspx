<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="OraleWey_Web.WebForm1" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="css/style.css" rel="stylesheet" type="text/css" />

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
</head>

<body>
<form id="form1" runat="server">
<div class="form1">
                <h8>Datos Personales</h8>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <div id="req_nombre" class="errores">Campo requerido. Introduzca su nombre.</div>
                <input type="text" placeholder="Nombre *" autofocus="" id="nombre" name="nombre" runat="server"/>
                <asp:TextBox ID="tb_nombre" runat="server" placeholder="Nombre *" name="tb_nombre"></asp:TextBox>
                <div id="req_apellidos" class="errores">Campo requerido. Introduzca sus apellidos.</div>
                <asp:TextBox ID="tb_apellidos" runat="server" placeholder="Apellidos *"></asp:TextBox>
                <div id="req_direccion" class="errores">Campo requerido. Introduzca su dirección.</div>
                <asp:TextBox ID="tb_direccion" runat="server" placeholder="Dirección *"></asp:TextBox>
                <div id="req_zipcode" class="errores">Campo requerido. Introduzca su Código Postal</div>
                <asp:TextBox ID="tb_zipcode" runat="server" placeholder="Código Postal *"></asp:TextBox>
                <asp:TextBox ID="tb_ciudad" runat="server" placeholder="Ciudad o Provincia *"></asp:TextBox>
                <asp:TextBox ID="tb_estado" runat="server" placeholder="Estado *" 
                    Font-Names="tb_nombre"></asp:TextBox>
                <div id="req_email" class="errores">Campo requerido. Introduzca su correo electrónico.</div>
                <asp:TextBox ID="tb_email" runat="server" placeholder="Correo Electrónico *"></asp:TextBox>
                <div id="req_confemail" class="errores">Campo requerido. Debe confirmar el correo electrónico.</div>
                <asp:TextBox ID="tb_confemail" runat="server" placeholder="Confirmar Correo Electrónico *"></asp:TextBox>
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
                <div id="req_usuario" class="errores">Campo requerido. Introduzca un usuario.</div>
                <asp:TextBox ID="tb_user" runat="server" placeholder="Usuario *"></asp:TextBox>
                <div id="req_contrasena" class="errores">Campo requerido. Debe introducir una contraseña.</div>
                <asp:TextBox ID="tb_contrasena" runat="server" placeholder="Contraseña *"></asp:TextBox>
                <div id="req_confcontra" class="errores">Campo requerido. Debe confirmar la contraseña.</div>
                <asp:TextBox ID="tb_confcontra" runat="server" placeholder="Confirmar Contraseña *"></asp:TextBox>
                
                <button type="submit" value="submit" onclick="return bt_guardar_onclick()" id="bt_guardar">Guardar</button>
                <input type="submit" value="submit" onclick="return btn_guardar_onclick()" id="btn_guardar" />
                <%--<asp:Button ID="bt_registrar" runat="server" Text="Guardar" onclick="bt_registrar_Click"/>--%>
                
                
            </div>
</form>
</body>
</html>