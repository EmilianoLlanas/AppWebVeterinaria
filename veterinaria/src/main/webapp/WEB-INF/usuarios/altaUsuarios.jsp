<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Alta usuarios</title>
</head>
<body>

<div class="container">
 
 <div class="row mb-5">
    <%@include file="../menu.jsp" %><br>
  	</div>
  	
  <br>
  
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Alta de usuarios
	  </div>
	  <div class="card-body">
<s:form action="altaUsuarioBD" method="POST">
  <s:hidden name="user.idUsuario"></s:hidden>
  <div class="form-group">
  <label for="user">Usuario</label>
    <s:textfield type="text" class="form-control" id="usuario.user" name="usuario.user" label="Usuario" placeholder="Usuario"></s:textfield>
  </div>
  <div class="form-group">
  <label for="password">Contrasena</label>
    <s:textfield type="password" class="form-control" id="usuario.password" name="usuario.password" label="Contrasena" placeholder="Contrasena"></s:textfield>
  </div>
  <div class="form-group">
  <label for="confirmarPassword">Confirmar contrasena</label>
    <s:textfield type="password" class="form-control" id="usuario.confirmarPassword" name="usuario.confirmarPassword" label="Confirmar contrasena" placeholder="Confirmar contrasena"></s:textfield>
  </div>
  <div class="form-group">
    <label for="estadoUsuario">Estado</label>
    <s:select class="form-control" id="usuario.estadoUsuario" name="usuario.estadoUsuario" list="#{'ACTIVO':'ACTIVO', 'BLOQUEADO':'BLOQUEADO', 'INACTIVO':'INACTIVO'}" value="estado" required="true" label="Estado"/>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:submit  class="btn btn-danger" value="Cancelar"/>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>
