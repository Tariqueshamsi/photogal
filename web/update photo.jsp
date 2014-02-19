<%-- 
    Document   : update photo
    Created on : 29 Dec, 2013, 1:51:19 PM
    Author     : JEBA ROJI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%    try {
            List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
            if (ServletFileUpload.isMultipartContent(request)) {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                String filename = "", filepath;
             
                    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    Connection con = DriverManager.getConnection("jdbc:odbc:regis", "", "");
                   String email = (String) session.getAttribute("kuchho");
                    //String name="";
                
                    //String contactno="";
                    //String phonno="";
                    // String password="";
                      //String gender="";
                       //String dob="";
                        //String location="";
                         //String question="";
                          //String answer="";
               //String encpass="";
                    StringBuffer dc;
                    dc = request.getRequestURL();
                    for (FileItem item : multiparts) //    while (items.hasNext()) 
                    {
                        //FileItem item = (FileItem) items.next();
                        if (item.isFormField()) {
                            
                             String itemName = item.getFieldName();
                        }
                      /*  if (itemName.equals("name")) {
                            name = item.getString();
                        }
                        if (itemName.equals("email")) {
                            email = item.getString();
                        }
                        if (itemName.equals("contactno")) {
                            contactno = item.getString();
                        }
                        
                        if (itemName.equals("password1")) {
                            password = item.getString();
                        }
                        if (itemName.equals("gender")) {
                            gender = item.getString();
                        }
                        if (itemName.equals("dob")) {
                            dob = item.getString();
                        }
                        if (itemName.equals("location")) {
                            location = item.getString();
                        }
                        if (itemName.equals("security_question")) {
                            question = item.getString();
                        }
                        if (itemName.equals("answer")) {
                            answer = item.getString();
                        }
             
                        }
                        */
                        else {
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
                                    boolean folderMade = (new File("C:/Users/JEBA ROJI/Documents/NetBeansProjects/WebApplication6/web/img")).mkdirs();
                                    filepath = "C:/Users/JEBA ROJI/Documents/NetBeansProjects/WebApplication6/web/img/" + filename;
                                    File savedFile = new File(filepath);
                                    item.write(savedFile);
                                    String fg="";
                                }
                            }
                        }//else

                    }
                    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    Date date = new Date();
                    String c = (String)request.getAttribute("k");
                   
                    PreparedStatement ps = con.prepareStatement("update cutie set pic='"+filename+"' where email='"+email+"'");
                  //  ps.setString(1, name);
                 //   ps.setString(2, email);
                  //  ps.setString(3, filename);
               //     ps.setString(4, dateFormat.format(date).toString());
                    int i = ps.executeUpdate();
                    if(i>0)
                    {
                   out.println("your pic change");
                    }
                    else
                    {
                        out.println("please try again");
                    }
                    }
                     
            else
            {
            
            }
                
            }
                catch (Exception e) {
                    e.printStackTrace();
                }      
            %>
        
        
        <h1></h1>
    </body>
</html>
