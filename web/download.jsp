<%-- 
    Document   : download
    Created on : 3 Jan, 2014, 4:53:36 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <link rel="stylesheet" type="text/css" href="style.css">
         <h3>click on download button,to download this pic</h3>
    </head>
         <%
         
             Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
                String email=(String)session.getAttribute("kuchho");
                String picid=(String)request.getParameter("a");
               
               PreparedStatement ps = con.prepareStatement("select * from photo where id='"+picid+"'");
                 ResultSet rs=ps.executeQuery();
                 while(rs.next())
                 {
                    
             
         %> 
       
        
        
    <body id="dwd">
        <%
             //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
             Connection con1=DriverManager.getConnection("jdbc:odbc:regis", "", "");
              //  String email=(String)session.getAttribute("kuchho");
               // String picid=(String)request.getParameter("a");
               PreparedStatement ps1 = con1.prepareStatement("select count(*) from like1 where picid='"+picid+"'");
                 ResultSet rs1=ps1.executeQuery();
                 
                
                 while(rs1.next())                
                     {
                       String b =  rs1.getString(1); 
                        %>
                       
                
  <img src="img/<%out.println(rs.getString(3));%>" height="500px" width="350px" /> 
            <%//<img src="img/<%out.println(rs.getString(3));%>
             <%//<img src="img/<%out.println(rs.getString(3));
            
             // <img src="img/><%out.println(rs.getString(3));%>
           
             <form action="like.jsp" method="POST">
                <input type="text" value="<%=picid%>" name="picid" hidden/>

                <input type="text" value="<%=b%>" name="like1" style="border: none; background-color: skyblue; width: 24px;"/>
                <input type="submit" name="submit" value="like" />
            </form>
              
         <%}}
         %>
        
         <form action="picdownload.jsp?b=<%=picid%>" method="post">
          <input type="submit" value="download"name="download"/>
         </form>
           
    </body>
         
</html>
