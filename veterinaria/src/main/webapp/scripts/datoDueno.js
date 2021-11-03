/* # Validando Formulario
============================================*/
$(document).ready(function(){
 $('#formulario').validate({
  errorElement: "span",
  ignore: ":hidden",
  rules: {
      "dueno.nombre": {
         minlength: 2,
         required: true,
         lettersonly: true
	
      },
      "dueno.direccion": {
         minlength: 2,
		 required: true
         
      },
      "dueno.rfc": {
         
         minlength: 2,
		 
      },
      "dueno.telefono": {
         required: true,
		 digits:true,
		 minlength:10,
		 maxlength:10
         
      }
  },
  messages: {
      "Dueno.nombre": {
         minlength: 'Mínimo 2 caracteres',
         required: 'El user es requerido',
		 lettersonly: 'Solo letras'
      },
  "Dueno.direccion": {
         minlength: 'Mínimo 2 caracteres',required: 'direccion es requerido',
      },
      "Dueno.rfc": {
         
          minlength: 'Mínimo 2 caracteres',
		  
      },
      "Dueno.telefono": {
         required: 'El estatus es requerido',
		 digits:'solo digitos',
		 minlength:'10 digitos exactos',
		 maxlength:'10 digitos exactos'
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