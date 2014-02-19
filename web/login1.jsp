<%-- 
    Document   : select
    Created on : 21 Dec, 2013, 2:49:19 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="jquery-1.10.2.min.js"></script>
    
      
        <%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
                String email=(String)session.getAttribute("kuchho");
                
               PreparedStatement ps = con.prepareStatement("select * from cutie where email='"+email+"'");
                 ResultSet rs=ps.executeQuery();
                 if(rs.next())
                 {
                 String name = rs.getString(1);
        %>
             
    </head>
    <div id="tar">
    <div id="opt" style="cursor: pointer">
        
        <span id="k"><%= name%> &nbsp; OPTIONS</span>
        <div id="g" style="text-decoration: none; display: none;">
               <a href="changepass.jsp">CHANGE PASSWORD</a><br />
               <a href="profile.jsp">PROFILE PAGE</a><br />
               <a href="logout.jsp">LOGOUT</a><br />
        </div>
        </div>
    </div>
                       <form action="update.jsp" method="POST" id="form1">
             <body id="login">
        <table>
            <tr>
                <td>name</td>
                <td><input type="text" name="name" value="<% out.println(name);%>"></td>
            </tr>
            <tr>
                <td>email</td>
                
                <td><% out.println(rs.getString(2));%></td>
            </tr>
             <tr>
                <td>contactno</td>
                <td><input type="text" name="contactno" value="<% out.println(rs.getString(3));%>"></td>
            </tr>
             <tr>
                <td>password</td>
                <td><input type="password" name="password" value="<%out.println(rs.getString(4));%>"></td>
            </tr>
            <tr>
                <td>gender</td>
                <td><input type="text" name="gender" value="<% out.println(rs.getString(5));%>"</td>
            </tr>
 <tr>
                <td>dob</td>
                <td><input type="text" name="dob" value="<% out.println(rs.getString(6));%>"></td>
            </tr>
             <tr>
                <td>location</td>
                <td><input type="text" name="location" value="<% out.println(rs.getString(7));%>"></td>

            </tr>
             <tr>
                <td>question</td>
                <td><input type="text" name="question" value="<% out.println(rs.getString(8));%>"></td>

            </tr>
             <tr>
                <td>answer</td>
                <td><input type="text" name="answer" value="<% out.println(rs.getString(9));%>"></td>
 </tr>
      <td><input type ="submit"name="update" value="Update"></td>
                 </table>
    </form>
                <% }
                 else
                 {
                     out.println("something is wronglogin");
                 }
                 %>
    </body>
    <script type="text/javascript">
        $(document).ready(function(){
           $('#k').click(function(){
               $('#g').show();
           }) ;
        });
    </script>
</html>
