<%-- 
    Document   : login
    Created on : 21 Dec, 2013, 2:31:01 PM
    Author     : Tarique
--%>

<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.File"%>
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
        <%
         
             /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:regis","","");
           String a=(String)request.getParameter("name");
           String b=(String)request.getParameter("email");
           String z=(String)request.getParameter("phon no");
           String c=(String)request.getParameter("password");
           String d=(String)request.getParameter("gender");
           String y=(String)request.getParameter("dob");
           String e=(String)request.getParameter("location");
            String g=(String)request.getParameter("answer");
            String f=(String)request.getParameter("security_question");
           PreparedStatement ps = con.prepareStatement("insert into cutie values(?,?,?,?,?,?,?,?,?)");
           ps.setString(1,a);
           ps.setString(2,b);
           ps.setString(3,z);
           ps.setString(4,c);
           ps.setString(5,d);
           ps.setString(6,y);
           ps.setString(7,e);
           ps.setString(8,f);
           ps.setString(9,g);
           int i = ps.executeUpdate();
           if(i>0)
           {
            response.sendRedirect("index.jsp");
          }
           out.println(a);
           */
             
             
         try {
            List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
            if (ServletFileUpload.isMultipartContent(request)) {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                String filename = "", filepath;
             
                    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    Connection con = DriverManager.getConnection("jdbc:odbc:regis", "", "");
                   // String email1 = (String) session.getAttribute("user");
                    String name="";
                    String email="";
                    String contactno="";
                    //String phonno="";
                     String password="";
                      String gender="";
                       String dob="";
                        String location="";
                         String question="";
                          String answer="";
               //String encpass="";
                    StringBuffer dc;
                    dc = request.getRequestURL();
                    for (FileItem item : multiparts) //    while (items.hasNext()) 
                    {
                        //FileItem item = (FileItem) items.next();
                        if (item.isFormField()) {
                            
                             String itemName = item.getFieldName();
                        if (itemName.equals("name")) {
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
                                    boolean folderMade = (new File("C:/Users/Tarique/Documents/NetBeansProjects/WebApplication6/web/img")).mkdirs();
                                    filepath = "C:/Users/Tarique/Documents/NetBeansProjects/WebApplication6/web/img/" + filename;
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
                   
                    PreparedStatement ps = con.prepareStatement("insert into cutie values('"+name+"','"+email+"','"+contactno+"','"+password+"','"+gender+"','"+dob+"','"+location+"','"+question+"','"+answer+"','"+filename+"')");
                  //  ps.setString(1, name);
                 //   ps.setString(2, email);
                  //  ps.setString(3, filename);
               //     ps.setString(4, dateFormat.format(date).toString());
                    int i = ps.executeUpdate();
                    if(i>0)
                    {
                        
                  response.sendRedirect("index.jsp");
                        
                    }
                    else
                    {
                        out.println("unsuccessful");
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
        
    </body>
</html>
