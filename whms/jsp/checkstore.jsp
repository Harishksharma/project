<%@page import="java.sql.*"%>
<%@ include file="connection.jsp" %>

<%
String a=request.getParameter("bookdate");
String b=request.getParameter("bookshift");
String c=request.getParameter("floor");
String d=request.getParameter("name");
String e=request.getParameter("mobile");
String f=request.getParameter("email");
String g=request.getParameter("address");
String h=request.getParameter("dob");
String i=request.getParameter("bsofa");
String j=request.getParameter("bchair");
String k=request.getParameter("btable");
String l=request.getParameter("bother");
String m=request.getParameter("fooditem");
String n=request.getParameter("bfood");
int cid=0;
int id=0;
int id1=0;
int statusQuery = 0;
int statusQuery1= 0;
int statusQuery2 = 0;
if(n!=null)
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
    try{	    

        rs = statement.executeQuery("select MAX(cid) as cid from customer");
        while (rs.next()) {
        cid=rs.getInt("cid");
         }
         cid=cid+1;
        String query="insert into customer (cid,name,mobile,email,address,dob,bookdate,bookshift,floor) values (?,?,?,?,?,?,?,?,?)";
        ps=connection.prepareStatement(query);
        ps.setInt(1,cid);
        ps.setString(2,d);
        ps.setString(3,e);
        ps.setString(4,f);
        ps.setString(5,g);
        ps.setString(6,h);
        ps.setString(7,a);
        ps.setString(8,b);
        ps.setString(9,c);
        statusQuery=ps.executeUpdate();
        if(statusQuery>0){
        String data1 = "select max(cid) as cid from customer";
        rs = statement.executeQuery(data1);
        while (rs.next()) {
        cid=rs.getInt("cid");
         }
         String data2 = "select max(id) as id from cdeco";
        rs = statement.executeQuery(data2);
        while (rs.next()) {
        id=rs.getInt("id");

        id=id+1;
         }
        String sql="insert into cdeco (id,sofa,chair,tables,other,cid) values (?,?,?,?,?,?)";
        ps=connection.prepareStatement(sql);
        ps.setInt(1,id);
        ps.setString(2,i);
        ps.setString(3,j);
        ps.setString(4,k);
        ps.setString(5,l);
        ps.setInt(6,cid);
        statusQuery1=ps.executeUpdate();
        if((statusQuery1>0)){
        String data3 = "select max(id) as id from ccatering";
        rs = statement.executeQuery(data3);
        while (rs.next()) {
        id1=rs.getInt("id");
        id1=id1+1;
         }
        String sql1="insert into ccatering (id,name,quantity,cid) values (?,?,?,?)";
         ps=connection.prepareStatement(sql1);
        ps.setInt(1,id1);
        ps.setString(2,m);
        ps.setString(3,n);
        ps.setInt(4,cid);
        statusQuery2=ps.executeUpdate();
        if((statusQuery2>0)){
        	response.setContentType("text/plain");
			response.getWriter().write("true");
        	}
    	}
	}
    }
    catch(Exception ex){
        out.println("Your Connection Failed");
    }
}
%>