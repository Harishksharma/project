<%--
    Document   : connection
    Created on : October 07, 2018, 23:05:00 PM
    Author     : Shadab Shaikh,TedirGhazali
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ include file="connection.jsp" %>
<%
String cid=request.getParameter("cid");
int no=Integer.parseInt(cid);
try {
	int i=statement.executeUpdate("DELETE FROM ccatering where cid='"+no+"'" );
	response.sendRedirect("view.jsp");
} catch(Exception e){}
try {
	int i=statement.executeUpdate("DELETE FROM cdeco where cid='"+no+"'" );
	response.sendRedirect("view.jsp");
} catch(Exception e){}
try {
	int i=statement.executeUpdate("DELETE FROM customer where cid='"+no+"'" );
	response.sendRedirect("view.jsp");
} catch(Exception e){}
%>
