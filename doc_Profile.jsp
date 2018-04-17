<%-- 
    Document   : Profile
    Created on : Jul 10, 2015, 7:46:32 PM
    Author     : VISHNU S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="../Scripts/docprofile.js" type="text/javascript"></script>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
      <%
String selectUser="SELECT * from tbl_docreg where username='"+session.getAttribute("name")+"'";
ResultSet rs=con.getData(selectUser);
rs.next();
%>
<h2>Doctor Profile</h2>
<form name="register"  action="docupdate_action.jsp">
        <table style="float: right" border="0">
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
        </table>
                    <table border="0">
                        <tr
                    
                </tr>
                <tr>
                    <td><b>Name</b></td>
                    <td><input type="text" readonly="readonly" name="t1" value="<%=rs.getString("name")%>"/></td>
                    <td><b></b></td>
                    <td><img width="100px" height="100px" src="../photo/<%=rs.getString("photo")%>"</td>
                    <td><div id="errname" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><b>Address</td>
                    <td><textarea name="address" rows="4" cols="20"><%=rs.getString("address")%></textarea></td>
                    <td><div id="erraddress" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Specialization</b></td>
                    <td><input type="text" name="t3" value="<%=rs.getString("specialization")%>" /></td>
                    <td><div id="errspeci" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Gender</b></td>
                   <td><input type="text" readonly="readonly" name="aj" value="<%=rs.getString("gender")%>" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Religion</b></td>
                    <td><input type="text" readonly="readonly" name="t4" value="<%=rs.getString("religion")%>" /></td>
                    <td><div id="errreli" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Cast</b></td>
                    <td><input type="text" readonly="readonly" name="t5" value="<%=rs.getString("cast")%>" /></td>
                    <td><div id="errcast" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>E-mail</b></td>
                    <td><input type="text" name="t6" value="<%=rs.getString("e_mail")%>" /></td>
                    <td><div id="erremail" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Qualification</b></td>
                    <td><input type="text" name="t7" value="<%=rs.getString("qualification")%>"/></td>
                    <td><div id="errqual" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Phone no</b></td>
                    <td><input type="text" name="t8" value="<%=rs.getString("phone_no")%>" /></td>
                    <td><div id="errph" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>User name</b></td>
                    <td><input type="text" name="t9" value="<%=rs.getString("username")%>" /></td>
                    <td><div id="erruser" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="t10" value="<%=rs.getString("password")%>"/></td>
                    <td><div id="errpwd" style=" color: red"></div></td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Update" onclick="return valid()"/></td>
                    <td><input type="reset" value="cancel" /></td>
                    <td></td>
                    <td></td>
                </tr>
        </table>
     </form>
                    <%@include file="footer.jsp" %>