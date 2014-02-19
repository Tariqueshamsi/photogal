<%-- 
    Document   : changepass
    Created on : 23 Dec, 2013, 4:28:31 PM
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
    <body><form action ="passwordfetch.jsp"method="post" id="chp">
        <table>
                <tr>
                    <td><label>old password</label></td>
                    <td><input type="password" name="old password"></td>
                </tr>
               <tr>
                    <td><label>new Password</label></td>
                    <td><input type="password" name="new password"></td>
                </tr>
                 <tr>
                    <td><label>confirm Password</label></td>
                    <td><input type="password" name="confirm password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="submit"></td>
                </tr>
            </table>
        </form>
        
   
    </body>
        <h1>CHANGE PASSWORD</h1>
    </body>
</html>
