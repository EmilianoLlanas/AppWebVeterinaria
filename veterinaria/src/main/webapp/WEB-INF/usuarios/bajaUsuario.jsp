<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Baja de usuario</title>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Baja de usuario
	  </div>
	  <div class="card-body">
<s:form action="bajaUsuarioBD">
<s:hidden name="usuario.idUsuario"></s:hidden>
  <div class="form-group">
  <label for="usuario">Usuario</label>
    <s:textfield type="text" class="form-control" id="usuario.user" name="usuario.user" label="Usuario" placeholder="Usuario" disabled="true"></s:textfield>
  </div>
  <div class="form-group">
    <label for="estado">Estado</label>
    <s:select class="form-control" id="usuario.estadoUsuario" name="usuario.estadoUsuario" list="#{'01':'Activo', '02':'Bloqueado', '03':'Inactivo'}" value="estado" required="true" disabled="true" label="Estado"/>
  </div>
  <div class="form-group">
  <label for="justificacion">Justificación</label>
    <s:textfield type="text" class="form-control" id="justificacion" name="justificacion" label="Justificacion" placeholder="Justificacion"></s:textfield>
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