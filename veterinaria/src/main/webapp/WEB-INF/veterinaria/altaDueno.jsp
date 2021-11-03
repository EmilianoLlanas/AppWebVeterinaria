<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Alta de dueños</title>
</head>
<body>

<div class="container">
 <div class="row mb-5">
    <%@include file="../menu.jsp" %><br>
  	</div>
  	
  <br>
  
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Alta de dueños
	  </div>
	  <div class="card-body">
<s:form>
  <div class="form-group">
  <label for="nombre">Nombre completo</label>
    <s:textfield type="text" class="form-control" id="dueno.nombre" name="dueno.nombre" placeholder="Nombre completo"></s:textfield>
  </div>
  <div class="form-group">
  <label for="direccion">Dirección</label>
    <s:textfield type="text" class="form-control" id="dueno.direccion" name="dueno.direccion" placeholder="Dirección"></s:textfield>
  </div>
  <div class="form-group">
  <label for="telefono">Teléfono</label>
    <s:textfield type="text" class="form-control" id="dueno.telefono" name="dueno.telefono" placeholder="Teléfono"></s:textfield>
  </div>
  <div class="form-group">
  <label for="rfc">RFC</label>
    <s:textfield type="text" class="form-control" id="dueno.rfc" name="dueno.rfc" placeholder="RFC"></s:textfield>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:submit  class="btn btn-danger" value="Cancelar"/>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>