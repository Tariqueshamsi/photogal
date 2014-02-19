<%-- 
    Document   : addphoto
    Created on : 27 Dec, 2013, 2:53:54 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <h1></h1>
        <%
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                if (ServletFileUpload.isMultipartContent(request)) {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    String filename = "", filepath;

                    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    Connection con = DriverManager.getConnection("jdbc:odbc:regis","","");
                     String email=(String)session.getAttribute("kuchho");
                
                   // String email = "";
                    String photoname = "";
                    String category = "";
                    String comment = "";
                    StringBuffer dc;
                    dc = request.getRequestURL();
                    for (FileItem item : multiparts) //    while (items.hasNext()) 
                    {
                        //FileItem item = (FileItem) items.next();
                        if (item.isFormField()) {

                            String itemName = item.getFieldName();
                            if (itemName.equals("email")) {
                                email = item.getString();
                            }
                            if (itemName.equals("photoname")) {
                                photoname = item.getString();
                            }
                           if (itemName.equals("category")) {
                                category = item.getString();
                            }
                           if (itemName.equals("comment")) {
                                comment = item.getString();
                            }
                        } else {
                            String itemName = item.getName();
                            String userFieldName = item.getFieldName();
                            if (itemName != null) {
                                if (itemName.equals("")) {
                                    out.println("No File Uploaded");
                                } else {
                                    int idx = itemName.lastIndexOf("\\");
                                    if (idx > -1) {
                                        //in case of IE, it sends complete path. Hence only file name must be filtered out.
                                        idx = idx + 1;
                                        filename = itemName.substring(idx);
                                    } else {
//in case of other borwsers, its just filename
                                        filename = itemName;
                                    }
                                    boolean folderMade = (new File("C:/Users/JEBA ROJI/Documents/NetBeansProjects/WebApplication2/web/img")).mkdirs();
                                    filepath = "C:/Users/JEBA ROJI/Documents/NetBeansProjects/WebApplication2/web/img/" + filename;
                                    File savedFile = new File(filepath);
                                    item.write(savedFile);
                                    String fg = "";
                                }
                            }
                        }//else

                    }
                    
                    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    Date date = new Date();
                    //String c = (String) request.getAttribute("k");
                    PreparedStatement ps= con.prepareStatement("insert into photo values('"+email+"','"+filename+"','"+category+"','"+date+"','"+comment+"')" );
                    //  ps.setString(1, name);
                    //   ps.setString(2, email);
                    //  ps.setString(3, filename);
                    //     ps.setString(4, dateFormat.format(date).toString());
                    int i = ps.executeUpdate();
                    if (i > 0) {
                        out.println("successful");
                    } else {
                        out.println("unsuccessful");
                    }
                } else {
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        
       
    </body>
</html>
