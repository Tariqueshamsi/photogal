<%-- 
    Document   : update
    Created on : 21 Dec, 2013, 11:25:53 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.util.List"%>
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
    <body>
        <form action="login1.jsp" method="POST">
              <% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
                        String a=(String)request.getParameter("name");  
                        String b =(String)session.getAttribute("kuchho");
                        String c=(String)request.getParameter("contactno");
                        String d=(String)request.getParameter("password");
                        String e=(String)request.getParameter("gender");
                        String f=(String)request.getParameter("dob");
                        String g=(String)request.getParameter("location");
                        String h=(String)request.getParameter("question");
                        String j=(String)request.getParameter("answer");
                        PreparedStatement ps=con.prepareStatement("UPDATE cutie SET name='"+a+"', contactno='"+c+"', password='"+d+"', gender='"+e+"', dob='"+f+"', location='"+g+"', question='"+h+"', answer='"+j+"' WHERE email='"+b+"'");
    
   int i = ps.executeUpdate();
           if(i>0)
           {
            response.sendRedirect("login1.jsp");
          }
          
     out.println("Failed");
           
        %>
        </form>
        <h1></h1>
    </body>
</html>
