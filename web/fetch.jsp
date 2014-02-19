<%-- 
    Document   : fetch
    Created on : 21 Dec, 2013, 2:59:31 PM
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
           <% String a=(String)request.getParameter("email");
            String b=(String)request.getParameter("password");%>
            
            <%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
                 PreparedStatement ps = con.prepareStatement("select * from cutie where email='"+a+"' and password='"+b+"'");
                 ResultSet rs=ps.executeQuery();
                 if(rs.next())
                 {
                  session.setAttribute("kuchho",a);
                  response.sendRedirect("login1.jsp");
                 }
                 else
                 {
                     out.println("email or password is wrong");
                     
                      
                     }
                 %>
      
        
</html>
