<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
<div class="container">
  <div class="row mb-5">
    <%@include file="../menu.jsp" %><br>
  </div>
  <div class="row">

	<div class="col mb-2">
	<s:if test="hasActionMessages()">
	    <s:actionmessage/>
	</s:if>
	
	<s:url var="altaPaciente" action="altaPacEdit">
	</s:url>
	<s:a href="%{editPaciente}" cssClass="btn btn-success">Alta Paciente</s:a>
	</div>
	
	<div class="container table-responsive">
	<table class="table table-stripped table-hover">
	<thead>
		<tr class="table-primary">
			<th>No.</th>
			<th>Nombre</th>
			<th>Categoria</th>
			<th>Editar</th>
			<th>Baja</th>
		</tr>
	</thead>
	<tbody>
	<s:iterator value="pacientes" status="stat">
		<tr>
		  <td> <s:property value="#stat.count" /> </td>
		  
			  <td> <s:property value="nombre" /> </td>
			  <td> <s:property value="categoria" /> </td>
			  <td> <s:property value="edad" /> </td>
			  
			 <td> 
			    <s:url var="editarP" action="initEdit">
			    	<s:param name="editar"> Editar </s:param>
			    	<s:param name="paciente.nombre" value="nombre" />
			    	<s:param name="paciente.categoria" value="categoria" />
			    	<s:param name="paciente.edad" value="edad" />
				</s:url>
			    <s:a href="%{editarP}"></s:a>
			  </td>
			  
			  <td> 
			    <s:url var="bajaP" action="initBaja">
			    	<s:param name="baja"> Baja </s:param>
			    	<s:param name="paciente.nombre" value="nombre" />
			    	<s:param name="paciente.categoria" value="categoria" />
			    	<s:param name="producto.edad" value="edad" />
				</s:url>
			    <s:a href="%{bajaP}"></s:a>
			  </td>
		   
			</tr>   
		</s:iterator>
		</tbody>
		</table>
		<br>
		</div>
	</div>
</div>
</body>
</html>