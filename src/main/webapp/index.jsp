<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Containerized Java Web Application</title>
</head>
<body>
	<h2>Hello World!</h2>
	<p>
		You are running container on host <b><%= request.getLocalName() %></b><br/>
		IP Address : <%=request.getLocalAddr() %>
	</p>
	<h3>Access this demo from my <a href="https://github.com/mahendra-shinde/docker-java-webapp-simple">Git Repository </a></h3>
</body>
</html>