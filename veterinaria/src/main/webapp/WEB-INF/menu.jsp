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
<title>Veterinaria</title>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-light" style="background-color: #e3f2fd; color: blue; margin-bottom: 30px;">
  <a class="navbar-brand" href="#">Veterinaria</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
      <s:url var="cuenta" action= "crearCuenta"></s:url>
        <s:a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></s:a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Administrar usuarios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <s:url var="altaUsuario" action= "altaUsuario"></s:url>
          <s:a action= "altaUsuario" class="dropdown-item" href="%{altaUsuario}">Alta de usuarios</s:a>
          <s:url var="consultarUsuarios" action= "consultarUsuarios"></s:url>
          <s:a action= "consultarUsuarios" class="dropdown-item" href="%{consultarUsuarios}">Consultar usuarios</s:a>
        </div>
      </li>

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Administrar veterinaria
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <s:url var="consultarDuenos" action= "consultarDuenos"></s:url>
          <s:a action= "consultarDuenos" class="dropdown-item" href="%{consultarDuenos}">Consultar due�os</s:a>

          <s:url var="altaDueno" action= "altaDueno"></s:url>
          <s:a action= "altaDueno" class="dropdown-item" href="%{altaDueno}">Alta de due�o</s:a>

          <s:url var="verPacientes" action= "verPacientes"></s:url>
          <s:a action= "verPacientes" class="dropdown-item" href="%{verPacientes}">Ver pacientes</s:a>

          <s:url var="consultaGeneral" action= "consultaGeneral"></s:url>
          <s:a action= "consultaGeneral" class="dropdown-item" href="%{consultaGeneral}">Consulta general</s:a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Salir</a>
      </li>
    </ul>
  </div>
</nav>

</body>
</html>
