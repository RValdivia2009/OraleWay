$(function () {

    var reglas = {

        tb_nombre: { required: true },
        tb_apellidos: { required: true },
        tb_direccion: { required: true },
        tb_zipcode: { required: true, number: true },
        tb_email: { required: true, email: true },
        tb_confemail: { required: true, email: true },
        tb_user: { required: true },
        tb_contrasena: { required: true },
        tb_confcontra: { required: true },
    }

    var mensajes= {
    
        nombre: {required: "Este campo es obligatorio."},
        tb_apellidos: {required: "Este campo es obligatorio."},
        tb_direccion: {required: "Este campo es obligatorio."},
        tb_zipcode: {required: "Este campo es obligatorio.", number: "No es un número."},
        tb_email: {required: "Este campo es obligatorio.", email: "No es un email válido."},
        tb_confemail: {required: "Este campo es obligatorio.", email: "No es un email válido."},
        tb_user: {required: "Este campo es obligatorio."},
        tb_contrasena: {required: "Este campo es obligatorio."},
        tb_confcontra: {required: "Este campo es obligatorio."},
    }


})