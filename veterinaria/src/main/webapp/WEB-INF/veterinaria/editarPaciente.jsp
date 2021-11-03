<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Editar paciente</title>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Editar paciente
	  </div>
	  <div class="card-body">
<s:form>
<s:hidden name="paciente.pacienteId"></s:hidden>
  <div class="form-group">
  <label for="nombre">Nombre del paciente</label>
    <s:textfield type="text" class="form-control" id="paciente.nombre" name="paciente.nombre" placeholder="Nombre del paciente"></s:textfield>
  </div>
  <div class="form-group">
    <label for="categoria">Categoria</label>
    <s:select class="form-control" id="paciente.categoria" name="paciente.categoria" list="#{'01':'Perro', '02':'Gato', '03':'Ave'}" value="categoria" required="true" label="Categoria"/>
  </div>
  <div class="form-group">
  <label for="edad">Edad</label>
    <s:textfield type="text" class="form-control" id="paciente.edad" name="paciente.edad" placeholder="Edad"></s:textfield>
  </div>
  <div class="form-group">
  <label for="nombreDueno">Dueño</label>
    <s:textfield type="text" class="form-control" id="paciente.nombreDueno" name="paciente.nombreDueno" placeholder="Nombre completo"></s:textfield>
  </div>
  <div class="form-group">
  <label for="telefonoDueno">Teléfono</label>
    <s:textfield type="text" class="form-control" id="paciente.telefonoDueno" name="paciente.telefonoDueno" placeholder="Teléfono"></s:textfield>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:submit  class="btn btn-danger" value="Cancelar"/>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>