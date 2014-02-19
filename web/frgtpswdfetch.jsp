
<%-- 
    Document   : frgtpswdfetch
    Created on : 23 Dec, 2013, 9:17:53 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link rel="stylesheet" type="text/css" href="style.css">
   
          <form action="confirmpass.jsp" method="POST">
         <table>
                <tr>
                    <td>
                    <label>newpassword</label></td>
                    <td><input type="password" name="newpassword" value="newpassword"></td>
                    <tr>
                    <td>
                    <label>confirmpassword</label></td>
                    <td><input type="password" name="confirmpassword" value="confirmpassword"></td>
            <tr>
                    <td>
                    <label>submit</label></td>
                    <td><input type="submit" name="submit" value="submit"></td>
            
                    </input>
                    
                </tr>         
        </table
        </form>
                    
    
    </body>
</html>
