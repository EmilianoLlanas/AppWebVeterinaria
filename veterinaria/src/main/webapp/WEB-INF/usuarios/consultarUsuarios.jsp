<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consultar usuarios</title>
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
	
	<s:url var="altaUSER" action="altaUsuario">
	</s:url>
	<s:a href="%{altaUSER}" cssClass="btn btn-success">Alta Usuario</s:a>
	</div>
	
	<div class="container table-responsive">
	
	<table class="table table-stripped table-hover">
	<thead>
		<tr class="table-primary">
			<th>No.</th>
			<th>ID Usuario</th>
			<th>Usuario</th>
			<th>Estatus</th>
			
			<th> Cambio </th>
			<th> Baja </th>
		</tr>
	</thead>
	<tbody>
	<s:iterator value="usuarios" status="stat">
		<tr>
		  <td> <s:property value="#stat.count" /> </td>
		  
			  <td> <s:property value="idUsuario" /> </td>
			  <td> <s:property value="user" /> </td>
			  <td> <s:property value="estadoUsuario" /> </td>
			 
			 
			  <td align="center"> 
			    <s:url var="editUSER" action="cambioUsuario">
			    	<s:param name="usuario.idUsuario" value="idUsuario" />
			    	<s:param name="usuario.user" value="user" />
			    	<s:param name="usuario.password" value="password" />
			    	<s:param name="usuario.confirmarPassword" value="confirmarPassword" />
			    	<s:param name="usuario.estadoUsuario" value="estadoUsuario" />
				</s:url>
			    <s:a href="%{editUSER}"><i class="fas fa-edit">Cambio</i></s:a>
			  </td>
			  
			  <td align="center"> 
			    <s:url var="bajaUSER" action="bajaUsuario">
			    	<s:param name="usuario.idUsuario" value="idUsuario" />
				</s:url>
			    <s:a href="%{bajaUSER}"><i class="fas fa-trash" >Baja</i></s:a>
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