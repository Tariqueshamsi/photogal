<%-- 
    Document   : logout
    Created on : 31 Dec, 2013, 11:22:25 AM
    Author     : JEBA ROJI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%


session.removeAttribute("email");
session.invalidate();
response.sendRedirect("tarique.jsp");

%>
    </head>
    <body>
        
    </body>
</html>
