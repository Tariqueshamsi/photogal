<%-- 
    Document   : index
    Created on : 31 Dec, 2013, 12:44:02 AM
    Author     : JEBA ROJI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The PHOTO Gallery </title>
<meta name="keywords" content="The Art Gallery, Free Website Template, XHTML, CSS" />
<meta name="description" content="The Art Gallery - Free Website Template XHTML CSS provided by TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_content">
	    ___
	    <div id="column_left_column">
<div class="section_w470">
            	
                <h2>The PHOTO Gallery</h2>
               
                
<ul class="gallery">
                	<li><a href="#"><img src="images/templatemo_image01.jpg" alt="image" /> </a></li>
                    <li><a href="#"><img src="images/templatemo_image02.jpg" alt="image" /> </a></li>
                    <li><a href="#"><img src="images/templatemo_image03.jpg" alt="image" /> </a></li>
                    <li><a href="#"><img src="images/templatemo_image04.jpg" alt="image" /> </a></li>
                    <li><a href="#"><img src="images/templatemo_image05.jpg" alt="image" /> </a></li>
                    <li><a href="http://www.templatemo.com" target="_parent"><img src="images/templatemo_image06.jpg" alt="Free Templates" /> </a></li>
                    <li><a href="#"><img src="images/templatemo_image07.jpg" alt="image" /> </a></li>
                    <li><a href="#"><img src="images/templatemo_image08.jpg" alt="image" /> </a></li>
                </ul>
                <div class="button_01"><a href="#">view</a></div>
                
            </div>
        
        </div> <!-- end of left column -->
        
        <div id="column_right_column">
			
            <div id="templatemo_menu">
                <ul>
                    <li><a href="#" class="current">Home</a></li>
                       <li><a href="tarique.jsp">LOGIN</a></li>
                   <li><a href="photogallery.jsp">view gallery</a></li>
			
             <li><a href="#" class="last">Contact</a></li>
                </ul>
            </div> <!-- end of menu -->
            
            <div id="templatemo_site_title">
            	<h1>
                	THE PHOTO GALLERY           </h1>
          </div>
            
          <div class="section_w475">
             <img src="img/rosy.jpg" alt="logo" />
          </div>
            
            <div class="cleaner_h30"></div>
            
          <div class="section_w475">
                <form action="insert1.jsp" method="post" enctype="multipart/form-data" id="reg">
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
                      <td width="103"><label> name </label>
                      </td>
                      <td width="232"><input type="text" name="name" />
                      </td>
                    </tr>
                    <tr>
                      <td><label> Email </label>
                      </td>
                      <td><input type="text" name="email" />
                      </td>
                    </tr>
                    <tr>
                      <td><label> contactno </label>
                      </td>
                      <td><input type="text" name="contactno" />
                      </td>
                    </tr>
                    <tr>
                      <td><label> password </label>
                      </td>
                      <td><input type="password" name="password1" />
                      </td>
                    </tr>
                    <tr>
                      <td><label> Gender </label>
                      </td>
                      <td><select name="gender">
                          <option value="select">select</option>
                          <option value="male">male</option>
                          <option value="female">female</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td><label> date of birth </label>
                      </td>
                      <td><input type="text" name="dob" />
                      </td>
                    </tr>
                    <tr>
                      <td></td></td>
                    </tr>
                    <tr>
                      <td><label> location </label>
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
                      <td><label> security question </label>
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
                      <td><label> answer </label>
                      </td>
                      <td><input type="text" name="answer" />
                      </td>
                    </tr>
                    <tr>
                      <td>Picture</td>
                      <td><input type="file" name="pic"></td>
                       
                      <td width="0"></td></td>
                      <td width="6">&nbsp;</td>
                      <td width="10">&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="29"></td>
                      <td id="sb"><input type="submit" name="submit" value="signup" />
                      </td>
                    </tr>
                  </table>
                </form>
				<table id="regist">
            <tr>
       
    </tr>
        </table>
</tr>
        
      

                <h2>&nbsp;</h2>
				
      </div>
        </div>
        <div class="cleaner"></div>
    </div> <!-- end of container -->
</div> <!-- end of wrapper -->
<div id="templatemo_footer">
<ul class="footer_menu">
        <li><a href="#">Home</a></li>
        <li><a href="#">Blog</a></li>
     
        <li><a href="#">Gallery</a></li>
        <li><a href="#">About</a></li>
        <li class="last_menu"><a href="#">Contact</a></li>
    </ul>
    Copyright © 2024 <a href="#">Your project Name</a> | 
    <a>PHOTO GALLERY</a> by <a  target="_parent">ROSY BHAVYA TARIQUE</a></div> 
<!-- end of footer -->
<div align=center>This PROJECT  DEVELOPED BY ROSY BHAVYA TARIQUE</a></div></body>
</html>