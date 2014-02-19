<%-- 
    Document   : forgotpass
    Created on : 23 Dec, 2013, 8:49:55 PM
    Author     : JEBA ROJI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link rel="stylesheet" type="text/css" href="style.css">
      `  
    </head>
    <body>
        <form action="securitycheck.jsp" method="post" id="forgpass">
            <table>
                
         <tr>
             <td>  <label>
                  email
              </label></td>
              
              <td> <input type="email" name="email" />
                </td>
        
               
            </tr>
         <tr>
              <td>
                  <label>
                  security question
              </label>
              </td>
              <td><select name="security_question">
                      <option value="select">select</option>
                        <option value="what is your father name?">what is your father name?</option>
                         <option value="what is your childhood name?">what is your childhood name?</option>
                        <option value="what is your favourite food?">what is your favorite food?</option>
                        <option value="what is pet name of your dog?">what is pet name of your dog?</option>
                       </select>
                </td>
               
            </tr>
            <tr>
                <td>
                  <label>
                  answer
              </label>
                
              </td>
              <td> <input type="text" name="answer" />
                </td>
               
            </tr>

      <tr>
                <td height="35"> </td>
            
                <td><input type="submit" name="submit">
                </td>
            </tr>
        </table>
        </form>
         <table>

    <tr>
        <td><a href="frgtpswdfetch.jsp"
</td>
    </tr>
        </table>
    </body>
</html>
