<%-- 
    Document   : admin_home
    Created on : Apr 28, 2015, 11:26:13 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="../Scripts/login.js" type="text/javascript"></script>
<%@include file="header.jsp" %>
      <form name="login" action="admin login action.jsp">
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
                    <td><b>User name</b></td>
                    <td><input type="text" name="t1" value="" /></td>
                   <td><div id="erruname" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="t2" value="" /></td>
                    <td><div id="errpassword" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    
                    <td><input type="submit" value="login" onclick="return valid()" /></td>
                    <td><input type="reset" value="cancel" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
      </form>
<%@include  file="footer.jsp" %>