<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.Date" %>  
<%@ include file="index.html" %>  
<%@ page errorPage="error.jsp" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=<% out.println("gray"); %> >
	<%!
		int a=2;	
	%>
	

<h1> The name of the user is : <%  out.println(request.getParameter("name")); pageContext.setAttribute("a","Naveen");  %> </h1>
<h1> The number is <%= a %> and the date is <%= new Date().toLocaleString() %> <% pageContext.getAttribute(, arg1) %></h1>

<h2>

</h2>

</body>
</html>