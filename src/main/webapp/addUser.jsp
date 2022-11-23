<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"  %>
<%@page import="java.io.*"  %>

<%@ page errorPage="error.jsp" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add remove user</title>
</head>

<%!
	Connection con;
 	public void jspInit() {   
    //init code 
	    try{
		   String url="jdbc:postgresql://localhost:5432/student";
		   Class.forName("org.postgresql.Driver");
	 	   this.con = DriverManager.getConnection(url,"postgres","123");
	    }
	    catch(Exception e)
	    {
	    	
	    }
    }  
	
 	public void writeData(JspWriter  out){
 	   try{
	 	   Statement st= con.createStatement();
	 	   ResultSet rset=st.executeQuery("Select * from student");
	 	   out.print("<ul>");
	 	   while(rset.next())
	 	   {
	 		   out.println("<li>"+rset.getString(2)+"</li>");
	 	   }
	 	   out.print("</ul>");
 	   }
 	   catch(Exception e){
 		   
 	   }
 	}
 	public void insertUser(JspWriter  out,String name){
  	   try{
 	 	   Statement st= con.createStatement();
 	 	   int result=st.executeUpdate("insert into student (name) values ('"+ "" +"' )");
 	 	   out.print(result);
  	   }
  	   catch(Exception e){
  		   
  	   }
  	}
  	
 	
%>



<body>
	<% 
	   writeData(out);
	%>
	
	
</body>
</html>