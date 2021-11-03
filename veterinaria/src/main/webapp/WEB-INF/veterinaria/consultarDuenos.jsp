<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
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
    <s:a href="%{altaDueno}" cssClass="btn btn-success">Alta de dueño</s:a>
    </div>

    <div class="container table-responsive">

    <table class="table table-stripped table-hover">
    <thead>
        <tr class="table-primary">
            <th>No.</th>
            <th>ID Dueno</th>
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
                <s:url var="editarDuenoo" action="editarDueno">
                    <s:param name="dueno.idDueno" value="idDueno" />
                    <s:param name="dueno.nombre" value="nombre" />
                    <s:param name="dueno.telefono" value="telefono" />
                </s:url>
                <s:a href="%{editarDuenoo}"><i class="fas fa-edit">Editar</i></s:a>
              </td>

              <td align="center"> 
                <s:url var="consultaPacientes" action="consultaPorDueno">
                    <s:param name="dueno.nombreDueno" value="nombreDueno"/>
</s:url>
                <s:a href="%{consultaPacientes}"><i class="fas fa-trash" >Ver pacientes</i></s:a>
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