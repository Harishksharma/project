<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>view</title>
    <link href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
</head>
<body>
    <h1><center>VIEW</center></h1>
    <div class="container">
       <h1><center>Costomer Detail</center></h1> 
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>dob</th>
                    <th>bookdate</th>
                    <th>bookshift</th>
                    <th>floor</th>
                </tr>
            </thead>
            <tbody>
                <%@ include file="connection.jsp"%>
                <%
                
                    String Data = "select * from customer";
                    rs = statement.executeQuery(Data);
                    while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("cid")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("mobile")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("dob")%></td>
                    <td><%=rs.getString("bookdate")%></td>
                    <td><%=rs.getString("bookshift")%></td>
                    <td><%=rs.getString("floor")%></td>
                    <td class="text-center" width="180">
                        <a href='update.jsp?u=<%=rs.getString("cid")%>' class="btn btn-info">Edit</a>
                        <a href='delete.jsp?cid=<%=rs.getString("cid")%>' class="btn btn-warning">Delete</a>
                    </td>
                </tr>
                <%
                 }
                %>
            </tbody>
        
        </table>
    </div>
     <div class="container">
        <h1><center>Decoration detail</center></h1>
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>sofa</th>
                    <th>chair</th>
                    <th>tables</th>
                    <th>other</th>
                    
                </tr>
            </thead>
            <tbody>
                
                <%
                
                    String deco = "select * from cdeco";
                    rs = statement.executeQuery(deco);
                    while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("sofa")%></td>
                    <td><%=rs.getString("chair")%></td>
                    <td><%=rs.getString("tables")%></td>
                    <td><%=rs.getString("other")%></td>
                    <td class="text-center" width="180">
                        <a href='update.jsp?v=<%=rs.getString("id")%>' class="btn btn-info">Edit</a>
                        <a href='delete.jsp?cid=<%=rs.getString("cid")%>' class="btn btn-warning">Delete</a>
                    </td>
                   
                </tr>
                <%
                 }
                %>
            </tbody>
        
        </table>
    </div>
    <div class="container">
        <h1><center>caterating detail </center></h1>
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>DIS</th>
                    <th>Quantity</th>
                    
                    
                </tr>
            </thead>
            <tbody>
                
                <%
                
                    String cat = "select * from ccatering";
                    rs = statement.executeQuery(cat);
                    while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("quantity")%></td>
                    <td class="text-center" width="180">
                        <a href='update.jsp?x=<%=rs.getString("id")%>' class="btn btn-info">Edit</a>
                        <a href='delete.jsp?cid=<%=rs.getString("cid")%>' class="btn btn-warning">Delete</a>
                    </td>
                   
                </tr>
                <%
                 }
                %>
            </tbody>
        
        </table>
    </div>

        <script src="js/misc.js" type="text/javascript"></script>
        <script src="js/checkdate.js" type="text/javascript"></script>
        <script src="js/storeinfo.js" type="text/javascript"></script>
</body>
</html>