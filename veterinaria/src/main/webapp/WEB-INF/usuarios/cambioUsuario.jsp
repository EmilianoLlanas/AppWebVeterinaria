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
<s:form action="cambioUsuarioBD" method="POST" id="formulario">
<s:hidden name="usuario.idUsuario"></s:hidden>
  <div class="form-group">
  <label for="user">Usuario</label>
    <s:textfield type="text" class="form-control" id="usuario.user" name="usuario.user" label="Usuario" placeholder="Usuario" disabled="true" required="true"></s:textfield>
  </div>
  <div class="form-group">
  <label for="password">Contraseña</label>
    <s:textfield type="password" class="form-control" id="usuario.password" name="usuario.password" label="Contraseña" placeholder="Contraseña" required="true"></s:textfield>
  </div>
  <div class="form-group">
  <label for="confirmarPassword">Confirmar contraseña</label>
    <s:textfield type="password" class="form-control" id="usuario.confirmarPassword" name="usuario.confirmarPassword" label="Confirmar contraseña" placeholder="Confirmar contraseña" required="true"></s:textfield>
  </div>
  <div class="form-group">
    <label for="estadoUsuario">Estado</label>
    <s:select class="form-control" id="usuario.estadoUsuario" name="usuario.estadoUsuario" list="#{'ACTIVO':'Activo', 'BLOQUEADO':'Bloqueado', 'INACTIVO':'Inactivo'}" value="estado" required="true" label="Estado"/>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:url var="adminCtes" action="consultarUsuarios">
			</s:url>
			<s:a href="%{adminCtes}" cssClass="btn btn-outline-danger">Cancelar</s:a>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>