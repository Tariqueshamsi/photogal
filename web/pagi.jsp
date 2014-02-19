<%-- 
    Document   : pagi
    Created on : 3 Jan, 2014, 4:35:59 PM
    Author     : JEBA ROJI
--%>


        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int displayPage = 0;
    if (request.getParameter("s") != null) {
        displayPage = Integer.parseInt(request.getParameter("s"));
    } else {
        displayPage = 1;
    }

    out.println(displayPage);

    ResultSet rs = null;
    PreparedStatement ps = null;
    int numResult = 0;
    int pagenum = 0;
    int showSize = 3;
    Connection con = null;
     String catog="";
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con = DriverManager.getConnection("jdbc:odbc:regis","","");
           String email = (String) session.getAttribute("kuchho");
          
           catog = (String)request.getParameter("category");
        ps = con.prepareStatement("SELECT * FROM photo where email='"+email+"' and category='"+catog+"'");
        rs = ps.executeQuery();
        while (rs.next()) {
            numResult = numResult + 1;
            
           
        }
        if ((numResult % showSize) == 0) {
            pagenum = numResult / showSize;
        } else {
            pagenum = numResult / showSize + 1;
        }
        //out.println(numResult);
    } catch (Exception ex) {
        out.println(ex.toString());
    }
%>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            <!--
            .style1 {
                font-family: Verdana, Arial, Helvetica, sans-serif;
                font-size: 12px;
                font-weight: bold;
            }
            .style2 {
                font-family: Verdana, Arial, Helvetica, sans-serif;
                font-size: 12px;
                color: #666666;
            }
            -->
        </style>
       <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body id="login2">
        
        <h1>PHOTO GALLERY</h1>
        <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
            <tr>
                <td bgcolor="#FFFFFF">
                    <%
                        rs = ps.executeQuery();
                        int count = 0;
                        String[] arr = new String[numResult];
                        String[] arr1 = new String[numResult];
                        while (rs.next()) {
                            arr[count] = rs.getString(1);
                            arr1[count] = rs.getString(3);
                            
                            count = count + 1;
                        }
                        for (int i = displayPage * showSize - 3; i < arr.length; i++) {
                            //out.println(arr[i] + "<br>");
                           // String pid = rs.getString("id");
                            if (i == displayPage * showSize) {
                                break;
                            } else 
                            {
                    %>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">

                        <tr>
                            <td width="15%">&nbsp;</td>
                          <td width="67%" height="30" colspan="3" class="style2">
                              <a href="download.jsp?a=<%=arr[i]%>"><image src="img/<%=arr1[i] %>" height="200px" width="200px"/></a></td>                      
       <td width="18%">&nbsp;</td>
                            </br>
                        </tr>
                       
                  
                       
                    <%
                            }
                        }
                    %>

                </td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="33%">&nbsp;</td>
                            <td width="33%"><div align="center">
                                    <%
                                        for (int i = 1; i < pagenum + 1; i++) {
                                    %>
                                    <a href="pagi.jsp?s=<%=i%>&category=<%=catog %>" class="style1" style="text-decoration:none; color:#0099CC"><%=i%></a>&nbsp;&nbsp;
                                   
                                    <%
                                        }
                                    %>



                                </div></td>
                            <td width="33%">&nbsp;</td>
                        </tr>
                    </table></td>
            </tr>
        </table>
                                     
        <p>&nbsp;</p>
        </form>
    </body>
</html>
<%
    con.close();
%>

    </body>
</html>
