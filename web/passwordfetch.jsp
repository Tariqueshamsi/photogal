<%-- 
    Document   : passwordfetch
    Created on : 23 Dec, 2013, 4:48:43 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.lang.String"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><body>
        
       <div> <% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
         String a=(String)request.getParameter("old password");
         String b=(String)request.getParameter("new password");
         String c=(String)request.getParameter("confirm password");
              
                String email=(String)session.getAttribute("kuchho");
                
               PreparedStatement ps = con.prepareStatement("select password from cutie where email='"+email+"' and password='"+a+"'");
                 ResultSet rs=ps.executeQuery();
                 if(rs.next())
                 {
                     ps.close();
                 }
                   if(b.equals(c))
                   {
                      PreparedStatement ps1=con.prepareStatement("UPDATE cutie SET password='"+b+"' WHERE email='"+email+"'");
                    int i=ps1.executeUpdate();
                   
                   if(i>0)
                       
           {
            response.sendRedirect("login1.jsp");
            
                        }
                   }
          
     out.println("wrongpassword");%>
           
</html>
