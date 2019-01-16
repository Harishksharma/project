<%@ include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<%
String a=request.getParameter("bookdate");
String b=request.getParameter("bookshift");
String c=request.getParameter("floor");
int id1=0;
int sofa=0;
int chair=0;
int tables=0;
int other=0;
int total=0;
String stotal;
String dname=null;
int qua=0;
int dishprice=0;
if(a!=null && b!=null && c!=null)
{
	String bd=null;
	String bh=null;
	String fl=null;

	try{
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	String sql="select bookdate,bookshift,floor,cid from customer where bookdate='"+a+"'";
	rs = statement.executeQuery(sql);
        while (rs.next()) {
        id1=rs.getInt("cid");
         }
         String sql1="select sofa,chair,tables,other from cdeco where cid='"+id1+"'";
		rs = statement.executeQuery(sql1);
         while(rs.next()){
          sofa=rs.getInt("sofa");
          chair=rs.getInt("chair");
          tables=rs.getInt("tables");
          other=rs.getInt("other");
         }
         String sql2="select name,quantity from ccatering where cid='"+id1+"'";
		rs = statement.executeQuery(sql2);
         while(rs.next()){
          dname=rs.getString("name");
          qua=rs.getInt("quantity");
         }
         if(dname.equals("muglai")){
         dishprice=qua*200;
         }
         else if(dname.equals("chinese")){
         dishprice=qua*350;
         }

         else if(dname.equals("italian")){
         dishprice=qua*300;
         }

         else{
         dishprice=qua*250;
         }
         
         sofa=sofa*200;
         chair=chair*50;
         tables=tables*100;
         other=other*50;

         total=sofa+chair+tables+other+dishprice;
         stotal=Integer.toString(total);
         response.setContentType("text/plain");
		 response.getWriter().write(stotal);
	}
     catch(Exception e){
     out.println("fail");
 }
 }
%>