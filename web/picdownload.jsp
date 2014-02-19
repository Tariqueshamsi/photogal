<%-- 
    Document   : picdownload
    Created on : 3 Jan, 2014, 5:46:05 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
       
          <%                  
              String filename="";
              String ab=(String)request.getParameter("b") ;   
  
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
                String email=(String)session.getAttribute("kuchho");
                
                PreparedStatement ps=con.prepareStatement("select * from photo where id='"+ab+"'");
                ResultSet rs=ps.executeQuery();
                 if(rs.next())
                 {
                     filename =  rs.getString(3);
                        %>
                        <%}
            BufferedInputStream filein = null;
            BufferedOutputStream outputs = null;
        try {
        File file = new File("C:\\Users\\JEBA ROJI\\Documents\\NetBeansProjects\\WebApplication6\\web\\img\\"+filename+"");//specify the file path
        byte b[] = new byte[2048];
            int len = 0;
    filein = new BufferedInputStream(new FileInputStream(file));
        outputs = new BufferedOutputStream(response.getOutputStream());
    response.setHeader("Content-Length", ""+file.length());
    response.setContentType("application/force-download");
    response.setHeader("Content-Disposition","attachment;filename=\""+filename+"\"");
    response.setHeader("Content-Transfer-Encoding", "binary");
    while ((len = filein.read(b)) > 0) {
    outputs.write(b, 0, len);
    outputs.flush();
    }
        }
    catch(Exception e){
    out.println(e);
        }
            %>
           
    </head>
    <body>
        <h1></h1>
    </body>
</html>
