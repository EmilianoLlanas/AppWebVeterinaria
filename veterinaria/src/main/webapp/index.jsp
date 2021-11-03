<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<s:if test="hasActionErrors()">
		<s:actionerror/>
	</s:if>
	
	<s:form action="login" method="POST"> 
		<s:textfield name="usuario" label="Usuario"/>
		<s:password name="password" label="Password"/>
		<s:submit value="Enviar"/>
	</s:form>
		
	

</body>
</html>