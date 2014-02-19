<%-- 
    Document   : like
    Created on : 6 Jan, 2014, 5:27:29 PM
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
       <%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
           String a=(String)request.getParameter("picid");
           
           String email = (String)session.getAttribute("kuchho");
           String b = (String)request.getParameter("like1");
           
           int kk = Integer.parseInt(b)+1;
           
           PreparedStatement ps = con.prepareStatement(" IF NOT EXISTS (SELECT * FROM like1 WHERE picid='"+a+"' AND email='"+email+"')  insert into like1 values(?,?,?)");
           ps.setString(1,a);
           ps.setInt(2,kk);
           ps.setString(3,email);
           
           int i = ps.executeUpdate();
           if(i>0)
           {
            response.sendRedirect("download.jsp?a="+a+"");
                         }
           else{
               response.sendRedirect("download.jsp?a="+a+"");
           }
          %> 
          
    </head>
    <body>
        <h1></h1>
    </body>
</html>
