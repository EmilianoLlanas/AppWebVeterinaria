<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Cambio a usuario</title>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Cambio a usuario
	  </div>
	  <div class="card-body">
<s:form>
  <div class="form-group">
  <label for="usuario">Usuario</label>
    <s:textfield type="text" class="form-control" id="usuario" name="usuario" label="Usuario" placeholder="Usuario" disabled="true"></s:textfield>
  </div>
  <div class="form-group">
  <label for="password1">Contraseña</label>
    <s:textfield type="password" class="form-control" id="password1" name="password1" label="Contraseña" placeholder="Contraseña"></s:textfield>
  </div>
  <div class="form-group">
  <label for="password2">Confirmar contraseña</label>
    <s:textfield type="password" class="form-control" id="password2" name="password2" label="Confirmar contraseña" placeholder="Confirmar contraseña"></s:textfield>
  </div>
  <div class="form-group">
    <label for="estado">Estado</label>
    <s:select class="form-control" id="estado" name="estado" list="#{'01':'Activo', '02':'Bloqueado', '03':'Inactivo'}" value="estado" required="true" label="Estado"/>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:submit  class="btn btn-danger" value="Cancelar"/>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>