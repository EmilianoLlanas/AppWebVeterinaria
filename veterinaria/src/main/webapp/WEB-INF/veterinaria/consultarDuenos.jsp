<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
    <s:a href="%{altaDueno}" cssClass="btn btn-success">Alta de dueño</s:a>
    </div>

    <div class="container table-responsive">

    <table class="table table-stripped table-hover">
    <thead>
        <tr class="table-primary">
            <th>No.</th>
            <th>Nombre</th>
            <th>Telefono</th>

            <th> Editar </th>
            <th> Ver pacientes </th>
        </tr>
    </thead>
    <tbody>
    <s:iterator value="duenos" status="stat">
        <tr>
          <td> <s:property value="#stat.count" /> </td>

              <td> <s:property value="idDueno" /> </td>
              <td> <s:property value="nombre" /> </td>
              <td> <s:property value="telefono" /> </td>


              <td align="center"> 
                <s:url var="editarPaciente" action="editarPaciente">
                    <s:param name="dueno.idDueno" value="idDueno" />
                    <s:param name="dueno.nombre" value="nombre" />
                    <s:param name="dueno.telefono" value="telefono" />
                </s:url>
                <s:a href="%{editarPaciente}"><i class="fas fa-edit">Editar</i></s:a>
              </td>

              <td align="center"> 
                <s:url var="verPacientes" action="consultaGeneral">
                    <s:param name="dueno.idDueno" value="idDueno" />
</s:url>
                <s:a href="%{varPAcientes}"><i class="fas fa-trash" >Var pacientes</i></s:a>
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