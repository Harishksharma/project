
<%@ include file="connection.jsp" %>
<%@page import="java.sql.*"%>
<%
int cid=0;
Class.forName("com.mysql.jdbc.Driver").newInstance();
    try{	    

        rs = statement.executeQuery("select MAX(cid) as cid from customer");
        while (rs.next()) {
        cid=rs.getInt("cid");
        out.println(cid);
         }
         }
    catch(Exception ex){
        out.println("Your Connection Failed");
    }
%>