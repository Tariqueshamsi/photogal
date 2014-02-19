


<%-- 
    Document   : pegination
    Created on : 31 Dec, 2013, 7:46:10 PM
    Author     : JEBA ROJI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table>

            <tr>
                <td>
            <thead> LastName</thead>
        </td>  
        <td>
        <thead>FirstName</thead>
    </td>
    <td>
    <thead>Addres</thead>
</td>
 <td>
    <thead>City</thead>
</td>
</tr>
    <%
       String[] abc =(String[])request.getAttribute("abc");
       String[] abc1 =(String[])request.getAttribute("abc1");
       String[] abc2= (String[])request.getAttribute("abc2");
      String[] abc3= (String[])request.getAttribute("abc3");
      
   //     String abc[] = new String[3];
     //   String abc1[] = new String[3];
      //  String abc2[] = new String[3];
      //  String abc3[] = new String[3];
      //  for(int j=0;j<3;j++)
       // {
    //     abc = (String[])session.getAttribute("abc['"+j+"']");
      //   abc1= (String[])session.getAttribute("abc1['"+j+"']");
        // abc2= (String[])session.getAttribute("abc2['"+j+"']");
       //  abc3= (String[])session.getAttribute("abc3['"+j+"']");
        //}
        for(int i=0;i<3;i++)
       {
           %><tr><td>
               <% out.println(abc[i]); %>
               </td>
               <td>
               <% out.println(abc1[i]); %>
               </td>
               <td>
               <% out.println(abc2[i]); %>
               </td>
               <td>
               <% out.println(abc3[i]); %>
               </td>
           </tr>
       <% }
        %>
</table>
</body>
</html>
