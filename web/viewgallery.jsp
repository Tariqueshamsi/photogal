<%-- 
    Document   : viewgallery
    Created on : 2 Jan, 2014, 10:49:33 AM
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
     <body>
        <form action="pegination" method="POST" enctype="multipart/form-data">    
        <h1></h1>
         <%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
              // String email=(String)session.getAttribute("kuchho");
              //  String catog=(String)request.getParameter("category");
                
              // PreparedStatement ps = con.prepareStatement("select * from photo where category='"+catog+"'");
                // ResultSet rs=ps.executeQuery();
                String imgn="";
                String a[]=(String[])request.getAttribute("abcd");
         String abc="";        
         %>
                 
                 <table>
                     <tr>
                         <%
                 for(int j=0;j<3;j++)
                    
                 {
                     // imgn=a[j].toString();
                         %>           
                <td>
                   <%// <label><%=a[j].toString() %>
                 
                   
                       <img src="img/<%=a[j].toString()%>" height="200px" width="150px" />
                
            <%}
                 out.println("see photo");
                %>     
            </tr>
            <tr>
                <td>
                  <button><image src="img/more_l.jpg"/></button>   
                </td>
                <td>
            <button><image src="img/more.jpg"/></button>
            </td>
            
            </tr>
                 </table> 
      
            </tr>
                 </table> 

</form>
    </body>
    
</html>
