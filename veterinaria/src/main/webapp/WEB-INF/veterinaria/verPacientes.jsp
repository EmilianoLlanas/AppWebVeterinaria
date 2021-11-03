<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Consultar pacientes</title>
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

    <s:url var="altaPaciente" action="altaPaciente">
    </s:url>
    <s:a href="%{altaPaciente}" cssClass="btn btn-success">Alta de paciente</s:a>
    </div>

    <div class="container table-responsive">

    <table class="table table-stripped table-hover">
    <thead>
        <tr class="table-primary">
            <th>No.</th>
            <th>idPaciente</th>
            <th>Nombre</th>
            <th>Categoría</th>
            <th>Edad(años)</th>

            <th> Editar </th>
            <th> Baja </th>
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
                <s:url var="editarPaciente" action="consultarDuenos">
                    <s:param name="paciente.idPaciente" value="idUsuario" />
                    <s:param name="paciente.nombre" value="nombre" />
                    <s:param name="paciente.categoria" value="categoria" />
                    <s:param name="paciente.edad" value="edad" />
                </s:url>
                <s:a href="%{editarPaciente}"><i class="fas fa-edit">Editar</i></s:a>
              </td>

              <td align="center"> 
                <s:url var="bajaPaciente" action="bajaPaciente">
                    <s:param name="paciente.idPaciente" value="idPaciente" />
</s:url>
                <s:a href="%{bajaPaciente}"><i class="fas fa-trash" >Baja</i></s:a>
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