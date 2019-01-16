<%@ include file="connection.jsp" %>
<%@page import="java.sql.*"%>
<%
String a=request.getParameter("bookdate");
String b=request.getParameter("bookshift");
String c=request.getParameter("floor");
if(a!=null && b!=null && c!=null)
{
	String bd=null;
	String bh=null;
	String fl=null;

	try{
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	String sql="select bookdate,bookshift,floor from customer where bookdate='"+a+"'";
	rs = statement.executeQuery(sql);
        while (rs.next()) {
        bd=rs.getString("bookdate");
        bh=rs.getString("bookshift");
        fl=rs.getString("floor");
        }
         
         if(bd.equals(a)&&bh.equals(b)&&fl.equals(c))
         {
        	response.setContentType("text/plain");
			response.getWriter().write("false");
         }
     
}
catch(Exception ex)
{
	out.println("Connection is Fail");
}
}
%>