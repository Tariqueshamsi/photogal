<%-- 
    Document   : profile
    Created on : 26 Dec, 2013, 5:07:43 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
                
                PreparedStatement ps=con.prepareStatement("select * from cutie where email='"+email+"'");
                ResultSet rs=ps.executeQuery();
                 if(rs.next())
                 {
                   //String name=rs.getString(3);
             %>
   
    </head>
    
   <form action="update photo.jsp" method="POST" enctype="multipart/form-data" id="head">
    <body>
        
        
        
            <h1>PROFILE PAGE</h1>
         <table>
            <tr>
                <td>name</td>
               <td><% out.println(rs.getString(1)); %></td>
            </tr>
            <tr>
                <td>email</td>
                
                <td><% out.println(rs.getString(2)); %></td>
            </tr>
             <tr>
                <td>contactno</td>
                <td><% out.println(rs.getString(3));%></td>
            </tr>
             <tr>
                <td>gender</td>
                <td><%out.println(rs.getString(5)); %></td>
            </tr>
             <tr>
                <td>dob</td>
                <td><% out.println(rs.getString(6));%></td>
            </tr>
            <tr>
                <td>location</td>
                <td><%out.println(rs.getString(7));%></td>
            </tr>
         
          <img src="img/<%out.println(rs.getString(10));%>" height="200px" width="150px" />
              
            
            <tr id="cpp">
                <td id="cp">change profile Picture</td>
            <td> <input type="file" name="pic" ></td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
            
            <tr>
                 
                   <td height="35"> </td>
                   <td id="cpp_sub" ><input type="submit" name="submit" value="submit">
                </td>
                
            </tr>
             
             </table>
            </form>
              <% }
                 else
                 {
                     out.println("something is wrong");
                 }
                 %>
   <div id="tar">
        <div id="opt" style="cursor: pointer">
            <span id="k"> &nbsp; OPTIONS</span>
       
            
        <div id="g" style="text-decoration: none; display: none;">
               <a href="profile1.jsp">UPLOAD PHOTO</a><br />
               <a href="profile.jsp">PROFILE PAGE</a><br />
               <a href="logout.jsp">LOGOUT</a><br />
        </div>
        </div>
        
    </body>
    
         </a></td> 
         <script type="text/javascript" src="script.js">
         </script>
         
</html>
