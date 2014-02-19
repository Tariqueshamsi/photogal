<%-- 
    Document   : pegination
    Created on : 31 Dec, 2013, 5:21:53 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        String a = request.getParameter("a");
        
        int pagenum;
        if (a != null) {
            pagenum = Integer.parseInt(a);
        } else {
            pagenum = 1;
        }
         
            int k=3;
           
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:regis", "", "");
            PreparedStatement ps = con.prepareStatement("declare @rowsperpage int=?, @pagenumber int = ? \n"
                    + "select photoname from(select photoname,row_number() over (order by id) as ROWNUM from photo)as SOD where SOD.RowNum between ((@pagenumber-1)*@rowsperpage)+1 and @rowsperpage*(@pagenumber)");
                 ps.setInt(1,k);
                 ps.setInt(2, pagenum);
            ResultSet rs = ps.executeQuery();
              String[] abc = new String[3];
             
              /*String abc1[] = new String[3];
              String abc2[] = new String[3];
             String abc3[] = new String[3];*/
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet pager2</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet pager2 at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
              int i = 0;
            while(rs.next())
                 
                      {
                          
                          abc[i] = rs.getString(1);
                          /*abc1[i]=rs.getString(2);
                          abc2[i] = rs.getString(3);
                          abc3[i] = rs.getString(4);*/
                          i++;
                      }
              request.setAttribute("abcd",abc);
            /*request.setAttribute("abc1",abc1);
            request.setAttribute("abc2",abc2);
             request.setAttribute("abc3",abc3);*/        
               // RequestDispatcher rd = getServletContext().getRequestDispatcher("viewgal.jsp");
              response.sendRedirect("viewgallery.jsp");
             //rd.forward(request, response);
        
       
       
            
    %>      
   
    </head>
    <body>
        <h1></h1>
    </body>
</html>


