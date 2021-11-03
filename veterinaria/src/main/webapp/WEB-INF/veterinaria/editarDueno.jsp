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
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Editar dueño
	  </div>
	  <div class="card-body">
<s:form>
<s:hidden name="dueño.idDueño"></s:hidden>
  <div class="form-group">
  <label for="nombre">Nombre completo</label>
    <s:textfield type="text" class="form-control" id="dueño.nombre" name="dueño.nombre" placeholder="Nombre completo"></s:textfield>
  </div>
  <div class="form-group">
  <label for="direccion">Dirección</label>
    <s:textfield type="text" class="form-control" id="dueño.direccion" name="dueño.direccion" placeholder="Dirección"></s:textfield>
  </div>
  <div class="form-group">
  <label for="telefono">Teléfono</label>
    <s:textfield type="text" class="form-control" id="dueño.telefono" name="dueño.telefono" placeholder="Teléfono"></s:textfield>
  </div>
  <div class="form-group">
  <label for="rfc">RFC</label>
    <s:textfield type="text" class="form-control" id="dueño.rfc" name="dueño.rfc" placeholder="RFC"></s:textfield>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:submit  class="btn btn-danger" value="Cancelar"/>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>>