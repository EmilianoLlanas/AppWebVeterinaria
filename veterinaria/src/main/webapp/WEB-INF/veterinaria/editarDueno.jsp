<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Editar due�o</title>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Editar due�o
	  </div>
	  <div class="card-body">
<s:form>
<s:hidden name="due�o.idDue�o"></s:hidden>
  <div class="form-group">
  <label for="nombre">Nombre completo</label>
    <s:textfield type="text" class="form-control" id="dueno.nombre" name="dueno.nombre" placeholder="Nombre completo"></s:textfield>
  </div>
  <div class="form-group">
  <label for="direccion">Direcci�n</label>
    <s:textfield type="text" class="form-control" id="dueno.direccion" name="dueno.direccion" placeholder="Direcci�n"></s:textfield>
  </div>
  <div class="form-group">
  <label for="telefono">Tel�fono</label>
    <s:textfield type="text" class="form-control" id="dueno.telefono" name="dueno.telefono" placeholder="Tel�fono"></s:textfield>
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
</html>>