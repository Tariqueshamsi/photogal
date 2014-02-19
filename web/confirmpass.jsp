<%-- 
    Document   : confirmpass
    Created on : 23 Dec, 2013, 10:40:31 PM
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
    </head>
    <% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
         String email=(String)session.getAttribute("changepass");
         String b=(String)request.getParameter("newpassword");
          
          PreparedStatement ps=con.prepareStatement("UPDATE cutie SET password='"+b+"' WHERE email='"+email+"'");
                    int i = ps.executeUpdate();
                    
                    if(i>0){
                        response.sendRedirect("tarique.jsp");
                    }else{
                        out.println("Something Wrong");
                    }
        %>
</html>
