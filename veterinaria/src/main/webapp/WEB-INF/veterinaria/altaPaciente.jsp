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

<title>Alta de paciente</title>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Alta de paciente
	  </div>
	  <div class="card-body">
<s:form>
  <div class="form-group">
  <label for="nombre">Nombre del paciente</label>
    <s:textfield type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre del paciente"></s:textfield>
  </div>
  <div class="form-group">
    <label for="estado">Categoria</label>
    <s:select class="form-control" id="categoria" name="categoria" list="#{'01':'Perro', '02':'Gato', '03':'Ave'}" value="categoria" required="true" label="Categoria"/>
  </div>
  <div class="form-group">
  <label for="telefono">Edad</label>
    <s:textfield type="text" class="form-control" id="edad" name="edad" placeholder="Edad"></s:textfield>
  </div>
  <div class="form-group">
  <label for="dueno">Dueño</label>
    <s:textfield type="text" class="form-control" id="dueno" name="dueno" placeholder="Nombre completo"></s:textfield>
  </div>
  <div class="form-group">
  <label for="telefono">Teléfono</label>
    <s:textfield type="text" class="form-control" id="telefono" name="telefono" placeholder="Teléfono"></s:textfield>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:submit  class="btn btn-danger" value="Cancelar"/>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>