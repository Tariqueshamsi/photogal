<%-- 
    Document   : securitycheck
    Created on : 23 Dec, 2013, 9:46:54 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
         String a=(String)request.getParameter("email");
          String b=(String)request.getParameter("security_question");   
        String c=(String)request.getParameter("answer");
       
             PreparedStatement ps = con.prepareStatement("select * from cutie where email='"+a+"' and question='"+b+"' and answer='"+c+"'");
                 ResultSet rs = ps.executeQuery();
                 
                 if(rs.next()){
                     session.setAttribute("changepass", a);
                     response.sendRedirect("frgtpswdfetch.jsp");
                 }else
                 {
                     response.sendRedirect("forgotpass.jsp");
                 }
     %>
    </body>
</html>
