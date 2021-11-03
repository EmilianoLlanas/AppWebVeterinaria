<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="styles/validations.css" rel="stylesheet">


<title>Alta de dueños</title>
</head>
<body>

<div class="container">
 <div class="row mb-5">
    <%@include file="../menu.jsp" %><br>
  	</div>
  	
  <br>
  
	<div class="card" style="margin-top: 20px;">
	  <div class="card-header">
	    Alta de dueños
	  </div>
	  <div class="card-body">
<s:form action="altaDuenoBD" method="POST" id="formulario" >
<s:hidden name="dueno.idDueno"></s:hidden>
  <div class="form-group control-group">
  <label for="nombre">Nombre completo</label>
    <s:textfield type="text" class="form-control" id="dueno.nombre" name="dueno.nombre" placeholder="Nombre completo" required="true"></s:textfield>
  </div>
  <div class="form-group control-group">
  <label for="direccion">Dirección</label>
    <s:textfield type="text" class="form-control" id="dueno.direccion" name="dueno.direccion" placeholder="Dirección" required="true"></s:textfield>
  </div>
  <div class="form-group control-group">
  <label for="telefono">Teléfono</label>
    <s:textfield type="text" class="form-control" id="dueno.telefono" name="dueno.telefono" placeholder="Teléfono" required="true"></s:textfield>
  </div>
  <div class="form-group control-group">
  <label for="rfc">RFC</label>
    <s:textfield type="text" class="form-control" id="dueno.rfc" name="dueno.rfc" placeholder="RFC" required="true"></s:textfield>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
    <s:url var="cancelarDue" action="consultarDuenos">
			</s:url>
			<s:a href="%{cancelarDue}" cssClass="btn btn-outline-danger">Cancelar</s:a>
</s:form>
	  </div>
	</div>
</div>
<script src="scripts/datoDueno.js"></script>

</body>
</html>