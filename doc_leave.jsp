<%-- 
    Document   : doc_leave
    Created on : Apr 28, 2015, 1:33:12 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="../Scripts/docleave.js" type="text/javascript"></script>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<h2>Apply Leave</h2>
        <form name="leave" action="docleaveaction.jsp">
        <table style="" border="0">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            
            <tbody>
 <tr>
                    <td><b>Department</b></td>
                    <td><input type="text" name="t11" value="<%=session.getAttribute("dept")%>" readonly="readonly" /></td>
                    <td></td>
                </tr>              
                <tr>
                    <td><b>Name</b></td>
                    <td><input type="text" name="t0" value="<%=session.getAttribute("name")%>" readonly="readonly" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Leave date</b></td>
                    <td><input type="date" name="t1" value="" /></td>
                     <td colspan="2" style="color:red"><%
                        String err=request.getParameter("err");
                        %>
                        <%=err!=null?err:"" %></td>
                </tr>
                <tr>
                    <td><b>Reason</b></td>
                    <td><input type="text" name="t2" value="" /></td>
                    <td><div id="errname" style=" color: red"></div></td>
                </tr>
                <tr>
                    <td><input type="text" hidden="hidden" name="t5" value="1" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit" onclick="return valid()" /></td>
                    <td><input type="reset" value="cancel" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        </form>
                        <%@include file="footer.jsp" %>