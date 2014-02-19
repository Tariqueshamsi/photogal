<%-- 
    Document   : tarique
    Created on : 21 Dec, 2013, 3:40:24 PM
    Author     : JEBA ROJI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body id="login">
        <form action="fetch.jsp" method="POST" id="trq">
            <h1>LOGIN PAGE</h1>
            <table>
                <tr>
                    <td><label>Email</label></td>
                    <td><input type="email" name="email"></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="Login"></td>
                </tr>
            </table>
        </form>
        <table id="frgp">
             <tr>
                 <td ><a href="forgotpass.jsp">forget password</a></td> 
    </tr>
        </table>
</tr>
        
   
    </body>
</html>
