<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<title>Alta usuarios</title>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Alta de usuarios
	  </div>
	  <div class="card-body">
<s:form>
  <div class="form-group">
  <label for="usuario">Usuario</label>
    <s:textfield type="text" class="form-control" id="usuario" name="usuario" label="Usuario" placeholder="Usuario"></s:textfield>
  </div>
  <div class="form-group">
  <label for="password1">Contrase�a</label>
    <s:textfield type="password" class="form-control" id="password1" name="password1" label="Contrase�a" placeholder="Contrase�a"></s:textfield>
  </div>
  <div class="form-group">
  <label for="password2">Confirmar contrase�a</label>
    <s:textfield type="password" class="form-control" id="password2" name="password2" label="Confirmar contrase�a" placeholder="Confirmar contrase�a"></s:textfield>
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
