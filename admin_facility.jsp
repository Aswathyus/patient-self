<%-- 
    Document   : admin_facility
    Created on : Apr 28, 2015, 12:05:11 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="../Scripts/fecility.js" type="text/javascript"></script>
<!DOCTYPE html>
<%@include file="header.jsp" %>
    <body>
        <h2>Facilities</h2>
        <form id="registerForm" name="registerForm" enctype="multipart/form-data" method="POST"   action="admin_facility_action.jsp">
        <table style="" border="1">
            <tbody>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="t1" value="" /></td>
                    <td><div id="errname" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td>Photo</td>
                    <td><input type="file" name="t2" value="" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><textarea name="t3" rows="4" cols="20"></textarea></td>
                    <td><div id="errdes" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Save" onclick="return valid()" /></td>
                    <td><input type="reset" value="Reset" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
</form>
        <%@include file="footer.jsp" %>