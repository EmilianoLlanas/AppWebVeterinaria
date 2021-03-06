<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Alta de paciente</title>
</head>
<body>

<div class="container">
 <div class="row mb-5">
    <%@include file="../menu.jsp" %><br>
  	</div>
  	
  <br>
	<div class="card" style="margin-top: 70px;">
	  <div class="card-header">
	    Alta de paciente
	  </div>
	  <div class="card-body">
<s:form>
<s:hidden name="paciente.pacienteId"></s:hidden>
  <div class="form-group">
  <label for="nombre">Nombre del paciente</label>
    <s:textfield type="text" class="form-control" id="paciente.nombre" name="paciente.nombre" placeholder="Nombre del paciente" disabled="true"></s:textfield>
  </div>
  <div class="form-group">
    <label for="categoria">Categoria</label>
    <s:select class="form-control" id="paciente.categoria" name="paciente.categoria" list="#{'01':'Perro', '02':'Gato', '03':'Ave'}" value="categoria" required="true" label="Categoria" disabled="true"/>
  </div>
  <div class="form-group">
  <label for="edad">Edad</label>
    <s:textfield type="text" class="form-control" id="paciente.edad" name="paciente.edad" placeholder="Edad" disabled="true"></s:textfield>
  </div>
  <div class="form-group">
  <label for="nombreDueno">Due?o</label>
    <s:textfield type="text" class="form-control" id="paciente.nombreDueno" name="paciente.nombreDueno" placeholder="Nombre completo" disabled="true"></s:textfield>
  </div>
  <div class="form-group">
  <label for="telefonoDueno">Tel?fono</label>
    <s:textfield type="text" class="form-control" id="paciente.telefonoDueno" name="paciente.telefonoDueno" placeholder="Tel?fono" disabled="true"></s:textfield>
  </div>
  <div class="form-group">
  <label for="justificacion">Justificaci?n</label>
    <s:textfield type="text" class="form-control" id="justificacion" name="justificacion" label="Justificacion" placeholder="Justificacion" ></s:textfield>
  </div>
  <s:submit  class="btn btn-success" value="Aceptar"/>
  <s:submit  class="btn btn-danger" value="Cancelar"/>
</s:form>
	  </div>
	</div>
</div>
</body>
</html>