/* # Validando Formulario
============================================*/
$(document).ready(function(){
 $('#formulario').validate({
  errorElement: "span",
  ignore: ":hidden",
  rules: {
      "Usuario.user": {
         minlength: 2,
         required: true
      },
      "Usuario.password": {
         minlength: 2,
         
      },
      "Usuario.confirmarPassword": {
         
         minlength: 2,
		 equalTo: "#Usuario.password"
      },
      "Usuario.estadoUsuario": {
         required: true
         
      }
  },
  messages: {
      "Usuario.user": {
         minlength: 'Mínimo 2 caracteres',
         required: 'El user es requerido'
      },
  "Usuario.password": {
         minlength: 'Mínimo 2 caracteres'
      },
      "Usuario.confirmarPassword": {
         
          minlength: 'Mínimo 2 caracteres',
		  equalTo:'Contraseñas deben ser iguales'
      },
      "Usuario.estadoUsuario": {
         required: 'El estatus es requerido',
      }
  },
  highlight: function(element) {
   $(element).closest('.control-group')
   .removeClass('success').addClass('warning');
  },
  success: function(element) {
   element
   .text('OK!').addClass('help-inline')
   .closest('.control-group')
   .removeClass('warning').addClass('success');
  }
 });
});