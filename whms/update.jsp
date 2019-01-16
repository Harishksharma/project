<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Booking Details</title>
	    <link href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
	    <link href="css/style.css" rel="stylesheet">
		<script src="js/bootstrap.js"></script>
	</head>
	<body>
        <%@ include file="../connection.jsp" %>
		<div class="container">
            <form role="form" method="post" action="">
                
                <!--Booking Details-->
                <div>
                     <%

                    String u=request.getParameter("u");
                    int num=Integer.parseInt(u);
                    String Data = "select * from customer where id='"+num+"'";
                    rs = statement.executeQuery(Data);
                    while (rs.next()) {
                    %>
                <fieldset class="form-group">
                        <label for="cid">Customer ID</label>
                        <input type="text" class="form-control" id="cid" name="cid" value='<%=rs.getString("cid")%>' >
                 </fieldset>
                 
                 <!--Booking Details-->
                <center><h1>Booking Details</h1></center>
                <fieldset class="form-group">
                    <label for="bookdate">Booking Date</label>
                    <input type="date" class="form-control" id="bookdate" name="bookdate" value='<%=rs.getString("bookdate")%>'>
                </fieldset>
                  <fieldset class="form-group">
                    <label for="bookshift" >Booking Shift</label>
                    <select class="form-control" name="bookshift" id="bookshift" value='<%=rs.getString("bookshift")%>'>
                        <option value="select">--Select--</option>
                        <option  value="afternoon">Afternoon</option>
                        <option value="evening">Evening</option>
                    </select> 

                </fieldset>
                    <fieldset class="form-group">
                    <label for="floor" >Floor</label>
                    <select class="form-control" name="floor" id="floor" value='<%=rs.getString("floor")%>'>
                        <option value="select">--select--</option>
                        <option value="ground">Ground</option>
                        <option value="first">First</option>
                        <option value="second">Second</option>
                    </select> 
                </fieldset>
                <br>
                <!--Customer Details-->
                <center><h1>Customer Details</h1></center>
                <fieldset class="form-group">
                    <label for="name">Customer Name</label>
                    <input type="text" class="form-control" id="name" name="name" maxlenght="50" value='<%=rs.getString("name")%>' required>
                </fieldset>
                  
                <fieldset class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="number" class="form-control" id="mobile" name="mobile" maxlenght="10" value='<%=rs.getString("mobile")%>'required>
                </fieldset>
                
                <fieldset class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value='<%=rs.getString("email")%>' required>
                </fieldset>
                  
                <fieldset class="form-group">
                    <label for="address">Address</label>
                    <input type="textarea" class="form-control" id="address" name="address" maxlenght="200" value='<%=rs.getString("address")%>' required>
                </fieldset>
                 
                <fieldset class="form-group">
                    <label for="dob">Date Of Birth</label>
                    <input class="form-control" type="date" id="dob" name="dob" value='<%=rs.getString("dob")%>' required>
                </fieldset>
                <br>
                <%
            }
            %>
                </div>

                <!--Decoration Details-->
                <div>
                     <%

                    String v=request.getParameter("v");
                    int num=Integer.parseInt(v);
                    String Data = "select * from cdeco where id='"+num+"'";
                    rs = statement.executeQuery(Data);
                    while (rs.next()) {
                    %>
                <center><h1>Decoration Details</h1>
                    <fieldset class="form-group">
                        <label for="decoitem">Item Name
                        <input type="text" class="form-control" id="sofa" name="sofa" value="Sofa"  required readonly></label>
                    
                        <label for="decoid">Price/Unit
                        <input type="text" class="form-control" value="200 Rs/-" readonly required></label>

                        <label for="bdquantity">Booking Quantity
                        <input type="text" class="form-control" id="bsofa" name="bsofa" value='<%=rs.getString("sofa")%>' required></label>
                    </fieldset>

                    <fieldset class="form-group">
                        <label for="decoitem">
                        <input type="text" class="form-control" id="chair" name="chair" value="Chair"  required readonly=""></label>
                    
                        <label for="decoid">
                        <input type="text" class="form-control" value="50 Rs/-"  readonly required></label>

                        <label for="bdquantity">
                        <input type="text" class="form-control" id="bchair" name="bchair" value='<%=rs.getString("chair")%>' required></label>
                    </fieldset>

                    <fieldset class="form-group">
                        <label for="decoitem">
                        <input type="text" class="form-control" id="table" name="table" value="Table" required readonly></label>
                                        
                        <label for="decoid">
                        <input type="text" class="form-control" value="100 Rs/-" readonly required></label>

                        <label for="bdquantity">
                        <input type="text" class="form-control" id="btable" name="btable" value='<%=rs.getString("tables")%>' required></label>
                    </fieldset>

                    <fieldset class="form-group">
                        <label for="decoitem">
                        <input type="text" class="form-control" id="other" name="other" value="Other" required readonly></label>

                        <label for="decoid">
                        <input type="text" class="form-control" id="oprice" name="oprice" value="50 Rs/-" required></label>

                        <label for="bdquantity">
                        <input type="text" class="form-control" id="bother" name="bother" value='<%=rs.getString("other")%>' required></label>
                    </fieldset>
                </center>
                <br>
                <%
            }
            %>
            </div>

                <!--Catering Details-->
                <div>
                     <%

                    String x=request.getParameter("x");
                    int num=Integer.parseInt(x);
                    String Data = "select * from ccatering where id='"+num+"'";
                    rs = statement.executeQuery(Data);
                    while (rs.next()) {
                    %>
                <center><h1>Catering Details</h1></center>
                    <fieldset class="form-group">
                        <label for="fooditem" id="fooditem">Dishes Type</label>
                        <select class="form-control" name="fooditem" id=fooditem value='<%=rs.getString("name")%>'>
                            <option value="mughlai">Mughlai [200/Plate]</option>
                            <option value="chinese">Chinese [350/Plate]</option>
                            <option value="italian">Italian [300/Plate]</option>
                            <option value="fishthali">Fish Thali [250/Plate]</option>
                        </select> 
                    </fieldset>

                    <fieldset class="form-group">
                        <label for="bfood">Booked Quantity</label>
                        <input type="number" class="form-control" id="bfood" name="bfood" value='<%=rs.getString("quantity")%>' required>
                    </fieldset>
                    <br>
                    <%
                    }
                    %>
                </div>
                    <input type="submit" class="btn btn-primary" style="width: 100%;" value="Update Details">
            </form>
        </div>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/misc.js" type="text/javascript"></script>
	</body>
</html>
<%
String cid=request.getParameter("cid");
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
int statusQuery = 0;
int statusQuery1= 0;
int statusQuery2 = 0;
if(n!=null)
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    
        String query="update customer set name=?,mobile=?,email=?,address=?,dob=?,bookdate=?,bookshift=?,floor=? where cid='"+id+"'";
        ps=connection.prepareStatement(query);
        ps.setString(2,d);
        ps.setString(3,e);
        ps.setString(4,f);
        ps.setString(5,g);
        ps.setString(6,h);
        ps.setString(7,a);
        ps.setString(8,b);
        ps.setString(9,c);
        statusQuery=ps.executeUpdate();
        if(statusQuery!=0){
            response.sendRedirect("view.jsp");
        }
         }
        String sql="update cdeco set bsofa=?,bchair=?,btable=?,bother where id='"+id+"'";
        ps=connection.prepareStatement(sql);
        ps.setString(2,i);
        ps.setString(3,j);
        ps.setString(4,k);
        ps.setString(5,l);
        ps.setInt(6,cid);
        statusQuery1=ps.executeUpdate();
        if(statusQuery1!=0){
            response.sendRedirect("view.jsp");
        }
        String sql1="update ccatering set fooditem=?,bfood=? where cid='"+id+"'";
         ps=connection.prepareStatement(sql1);
        ps.setInt(1,id1);
        ps.setString(2,m);
        ps.setString(3,n);
        statusQuery2=ps.executeUpdate();
        if(updateQuery!=0){
            response.sendRedirect("view.jsp");
        }
        }
    }
    }
    catch(Exception ex){
        out.println("Your Connection Failed");
    }
}
%>