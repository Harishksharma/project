<%@page import="java.sql.*"%>
<%@ include file="connection.jsp" %>
<%
String a=request.getParameter("uname");
String b=request.getParameter("pass");
String dbname=null;
String dbpass=null;
if(a!=null && b!=null)
	{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
    try{	    
        rs = statement.executeQuery("select * from user where name='"+a+"'");
        while (rs.next()) {
        dbname=rs.getString("name");
        dbpass=rs.getString("pass");
        out.println(dbname);
        if(dbname.equals(a)&&dbpass.equals(b))
         {
         	response.sendRedirect("http://localhost:8080/WHMS/dash.jsp");
         }
         }
     }
     catch(Exception ex)
     {
     	out.println("Fail");

     }
 }

%>