<%-- 
    Document   : doc_reg
    Created on : Apr 28, 2015, 12:40:07 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="../Scripts/docreg.js" type="text/javascript"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ColorModi</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../color_modi_template_2153/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../color_modi_template_2153/css/coin-slider.css" />
<script type="text/javascript" src="../color_modi_template_2153/js/cufon-yui.js"></script>
<script type="text/javascript" src="../color_modi_template_2153/js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="../color_modi_template_2153/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../color_modi_template_2153/js/script.js"></script>
<script type="text/javascript" src="../color_modi_template_2153/js/coin-slider.min.js"></script>
<script type="text/javascript">
    window.history.forward();
    function noBack(){window.history.forward();}
</script>
</head>
<body>
    <body onload="noBack();"
          onpageshoe="if(event.persisted) noBack;" onunload=""></body>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a style="font-weight:bold;color:black" href="../LOGIN.jsp">Log IN</a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html"><span>E</span>YE<span>C</span>ARE <small></small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
          <div id="coin-slider"><a href="#"><img src="../Photos/doctor1.jpg" width="940" height="310" alt="" /></a> <a href="#"><img src="../Photos/doctor2.jpg" width="940" height="310" alt="" /></a> <a href="#"><img src="../Photos/doctor3.jpg" width="940" height="310" alt="" /></a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
            </div>
          </div>
        <form name="register" method="post" enctype="multipart/form-data" action="docregaction.jsp">
        <table border="0">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><b>Name</b></td>
                    <td><input type="text" name="t1" value="" /></td>
                    <td><div id="errname" style=" color: red"></div></td>
                    <td><b>Photo</b></td>
                    <td><input type="file" name="photo" value="" /></td>
                </tr>
                <tr>
                    <td><b>Address</td>
                    <td><textarea name="address" rows="4" cols="20"></textarea></td>
                    <td><div id="erraddress" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>Specialization</b></td>
                    <td><select name="t3">
                            <option>Select</option>
                            <option>General Physician</option>
                            <option>Pediatrician</option>
                            <option>Cardiologist</option>
                            <option>Neurologist </option>
                        </select></td>
                </tr>
                <tr>
                    <td><b>Gender</b></td>
                    <td><input type="radio" name="aj" value="male" /><b>Male</b></td>
                    <td><input type="radio" name="aj" value="female" /><b>Female</b></td>
                </tr>
                <tr>
                    <td><b>Religion</b></td>
                    <td><input type="text" name="t4" value="" /></td>
                    <td><div id="errreli" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>Cast</b></td>
                    <td><input type="text" name="t5" value="" /></td>
                   <td><div id="errcast" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>E-mail</b></td>
                    <td><input type="text" name="t6" value="" /></td>
                    <td><div id="erremail" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>Qualification</b></td>
                    <td><input type="text" name="t7" value="" /></td>
                    <td><div id="errqual" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>Experience</b></td>
                    <td><input type="text" name="t11" value="" /></td>
                    <td><div id="" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>Phone Number</b></td>
                    <td><input type="text" name="t8" value="" /></td>
                    <td><div id="errph" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>User name</b></td>
                    <td><input type="text" name="t9" value="" /></td>
                    <td><div id="erruser" style=" color: red"></div></td> 
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="t10" value="" /></td>
                    <td><div id="errpwd" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><input type="submit" value="register" onclick="return valid()" /></td>
                    <td><input type="reset" value="cancel" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        </form>
      <%@include file="footer.jsp" %>