<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Consulta general</title>
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


    <div class="container table-responsive">

    <table class="table table-stripped table-hover">
    <thead>
        <tr class="table-primary">
            <th>No.</th>
            <th>Nombre</th>
            <th>Categoría</th>
            <th>Edad(años)</th>
            <th>Dueño</th>
            <th>Telefono</th>

        </tr>
    </thead>
    <tbody>
    <s:iterator value="pacientes" status="stat">
        <tr>
          <td> <s:property value="#stat.count" /> </td>

              <td> <s:property value="idPaciente" /> </td>
              <td> <s:property value="nombre" /> </td>
              <td> <s:property value="categoria" /> </td>
              <td> <s:property value="edad" /> </td>


              <td align="center"> 
                <s:url var="editarPaciente" action="editarPaciente">
                    <s:param name="paciente.idPaciente" value="idUsuario" />
                    <s:param name="paciente.nombre" value="nombre" />
                    <s:param name="paciente.categoria" value="categoria" />
                    <s:param name="paciente.edad" value="edad" />
                    <s:param name="paciente.dueno" value="dueno" />
                    <s:param name="paciente.telefonoDueno" value="telefonoDueno" />
                </s:url>
              </td>


              </tr>
          </s:iterator>


    </tbody>
    </table>
    <br>
    </div>


    </div>
    </div>
 </div>  
</body>
</html>