<%-- 
    Document   : photogallery
    Created on : 2 Jan, 2014, 10:44:39 AM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
        <%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:regis", "", "");%>
            <%//String email = (String) session.getAttribute("kuchho");

//PreparedStatement ps = con.prepareStatement("select * from photo where email='"+email+"'");%>
            

    </head>
    <body id="login2">
    <form action="pagi.jsp" method="POST">
         <table>
                <tr>
                    <td><select name="category">
                      <option value="select">select</option>
                        <option value="car">car</option>
                        <option value="nature">nature</option>
                        <option value="food">food</option>
                              <option value="flower">flower</option>
                        <option value="god">god</option>   
                        <option value="abstract">abstract</option>  
                        <option value="others">others</option>  
                  </select>
                </td>
          
            </tr>
            <tr>
               <td>
                 <input type="submit" name="submit" value="submit"/>
            </td>  
            </tr>

        </table>
   
</td>
                </tr>
            </table>
        </form>
        <h1></h1>
    </body>
</html>
