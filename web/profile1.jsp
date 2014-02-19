<%--
    Document   : profile1
    Created on : 26 Dec, 2013, 10:09:03 PM
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
           <link rel="stylesheet" type="text/css" href="style.css">
           <script type="text/javascript" src="jquery-1.10.2.min.js"></script>
        <%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
                String email=(String)session.getAttribute("kuchho");
                
                PreparedStatement ps=con.prepareStatement("select * from cutie where email='"+email+"'");
                ResultSet rs=ps.executeQuery();
                 if(rs.next())
                 {
             %>
    </head>
    <body>
        <form action="addphoto.jsp" method="POST" enctype="multipart/form-data">
        <table>
           
            <tr>
                <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td><td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td><td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td><td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td><td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td><td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td><td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
             <td>
                <td>   <td>
                        
                     </td>
                   
                     <td>
                         
                     </td>
                     <td><select name="category">
                      <option value="others">category</option>
                      <option value="nature">nature</option>
                        <option value="abstract">abstract</option>
                        <option value="car">car</option>
                        <option value="FLOWER">flower</option>
                        <option value="god">god</option>
                        <option value="food">food</option>
                       </select></td></td>
            <td></td>
            <td></td>
            
            
          

        
            </tr>
        </td>
            <tr>    
                
                <td><img src="img/<%out.println(rs.getString(10));%>" height="200px" width="150px" /></td>
                  
                       
                    
            </tr>
            <tr>
                <td>
                    CURRENT DP
                </td>
            
            
                <td></td>
                <td>
            <input type="submit"name="submit"value="add"/>
                </td>
                 <td></td>
            <td> <input type="file" name="pic" ></td>
            </tr>  
        </table>
        <table>
          
            <td>
        <td> 
        <td></td>
        <td>
        <td>
                </td>
    </td>
            
        </td>
         <td></td>
         <td></td>
         <td></td>
         <td>
            
    
        </td>
    </table>
                <%}
                 else
                 {
                     out.println("unsuccessful");
                 }
                 %>
                  <table>
             <tr>
        <td></td> 
    </tr>
   </table>
        </form>  
                  <div id="tar">
        <div id="opt" style="cursor: pointer">
            <span id="k"> &nbsp; OPTIONS</span>
       
            
        <div id="g" style="text-decoration: none; display: none;">
               <a href="photogallery.jsp">VIEW GALLERY</a><br />
               <a href="profile.jsp">PROFILE PAGE</a><br />
               <a href="logout.jsp">LOGOUT</a><br />
        </div>
        </div>
    </body>
     <script type="text/javascript" src="script.js">
         </script>
         
   
</html>
