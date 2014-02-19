<%-- 
    Document   : indexz
    Created on : 21 Dec, 2013, 12:51:40 PM-
    Author     : Tarique
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        
          
        <form action="insert1.jsp" method="POST" enctype="multipart/form-data" id="reg">
             <h2 id="font"> REGISTRATION FORM </h2>
            <table> 
            <tr>
            <td></td>
            <td></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          </table>
   
        <table>
            <tr>
                <td>
                    <label>
                        name
                    </label>
                </td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>
            <tr>
                <td>    
                    <label>
                       Email
                    </label>
                
                </td>
                <td>
                    <input type="text" name="email">
                </td>
            </tr>
            <tr>
                <td>    
                    <label>
                       contactno
                    </label>
                
                </td>
                <td>
                    <input type="text" name="contactno">
                </td>
            </tr>
            
            
             
             <tr>
                <td>
                    <label>
                        password
                    </label>
                </td>
                <td>
                    <input type="password" name="password1">
                
                </td>
            </tr>
        
        
                 <tr>
              <td>
                  <label>
                  Gender
              </label>
              </td>
              <td><select name="gender">
                      <option value="select">select</option>
                        <option value="male">male</option>
                        <option value="female">female</option>
                       </select>
                </td>
               
            </tr>
            <tr>
                <td>    
                    <label>
                       date of birth
                    </label>
                
                </td>
                <td>
                    <input type="text" name="dob">
                </td>
            </tr>
           
          
            <tr>
            </td></tr>
              <tr>
                <td>
                    <label>
                       location
                    </label>
                </td>
                <td><select name="location">
                       <option value="select city">select city</option>
                        <option value="patna">patna</option>
                        <option value="ranchi">ranchi</option>
                        <option value="kolkata">kolkata</option>
                        <option value="mumbai">mumbai</option>
                        <option value="shimla">Simla</option>
                        <option value="manali">manali</option>
                        <option value="kashmir">kashmir</option>
                        <option value="goa">goa</option>
                        
                    </select>
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
                  <option value="what is pet name of your dog?">what is pet name of your animal?</option>     
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
            <td>Picture</td>
            <td> <input type="file" name="pic" ></td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
            <tr>
                <td height="35"> </td>
            
                <td id="sb"><input type="submit" name="submit">
                </td>
            </tr>
        </table>
</form>
        <table id="regist">
            <tr>
        <td><a href="tarique.jsp">LOGIN</a></td> 
    </tr>
        </table>
</tr>
        
      </body>
</html>

