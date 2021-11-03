<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alta Paciente</title>
	<link href="styles/validation.css" rel="stylesheet">
</head>
<body>
<div class="container">
	 <div class="row mb-5">
    <%@include file="../menu.jsp" %><br>
  	</div>
  	
	<s:if test="hasActionErrors()">
		<s:actionerror/>
	</s:if>
	
	<div class="row">
	 	<div class="col">
			<s:form action="altaPaciente" method="POST" id="formulario">
			<div class="row form-group ">
				<div class="col-sm-12 col-md-6 col-lg-3 control-group">
				<label for=Nombre class="form-label">Nombre</label>
				<s:textfield name="paciente.nombre" id="Nombre" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="paciente.nombre"/>
				</div>
				
				<div class="col-sm-12 col-md-6 col-lg-3 control-group">
				<label for=Categoria class="form-label">Categoria</label>
				<s:textfield name="paciente.categoria" id="Nombre" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="paciente.categoria"/>
				</div>
				
				<div class="col-sm-12 col-md-6 col-lg-3 control-group">
				<label for=Edad class="form-label">Edad</label>
				<s:textfield name="paciente.edad" id="Nombre" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="paciente.edad"/>
				</div>
			</div>
				<div class="btn-group mt-2 col-sm-12 col-md-6 col-lg-4 " role="group" >
					<s:submit value="Enviar" cssClass="btn btn-outline-primary"/>
					<s:url var="regresar" action="consultarPaciente">
					</s:url>
					<s:a href="%{regresar}" cssClass="btn btn-outline-danger">Cancelar</s:a>
				</div>
	</s:form>
	</div>
</div>
	<br>
</div>
	<script src="scripts/datosProducto.js"></script>	
</body>
</html>