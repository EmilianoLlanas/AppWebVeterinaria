<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Editar dueño</title>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
	<div class="card" style="margin-top: 20px;">
	  <div class="card-header">
	    Editar dueno
	  </div>
	  <div class="card-body">
<s:form action="editarDuenoBD" method="POST">
<s:hidden name="dueno.idDueno"></s:hidden>
  
  <div class="form-group">
  <label for="nombre">Nombre completo</label>
    <s:textfield type="text" class="form-control" id="dueno.nombre" name="dueno.nombre" placeholder="Nombre completo"></s:textfield>
  </div>
  
  <div class="form-group">
  <label for="direccion">Dirección</label>
    <s:textfield type="text" class="form-control" id="dueno.direccion" name="dueno.direccion" placeholder="Dirección"></s:textfield>
  </div>
  
  <div class="form-group">
  <label for="rfc">RFC</label>
    <s:textfield type="text" class="form-control" id="dueno.rfc" name="dueno.rfc" placeholder="RFC"></s:textfield>
  </div>
  
  <div class="form-group">
  <label for="telefono">Teléfono</label>
    <s:textfield type="text" class="form-control" id="dueno.telefono" name="dueno.telefono" placeholder="Teléfono"></s:textfield>
  </div>
  
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:url var="editDuen" action="consultarDuenos">
			</s:url>
			<s:a href="%{editDuen}" cssClass="btn btn-outline-danger">Cancelar</s:a>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>