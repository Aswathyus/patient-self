<%-- 
    Document   : admin_shift doc
    Created on : Apr 28, 2015, 11:45:18 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<h2>ADD Doctor Shift</h2>
        <form action="admin_sdaction.jsp">
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
                    <td><b>Doctor name</b></td>
                 
                    <td><select name="t2">
                            <option>Select</option>
                           <%  String q="select distinct(name) from tbl_docreg ";  
   ResultSet rsitem = con.getData(q);
                        while (rsitem.next()) {
                    %>
                    <option value="<%=rsitem.getString("name")%>"><%=rsitem.getString("name")%></option>
                    <%
                        }
                    %></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td><b>Shift</b></td>
                    <td><select name="t3">
                            <option>Select</option>
                            <option>Morning</option>
                            <option>Night</option>
                        </select></td>
                    <td></td>
                </tr>
                <tr>
               <td><b>From date</b></td>
               <td><input type="date" name="t4" value="" /></td>
                    <td></td>
                </tr>
                <tr>
                    
                <td><b>To date</b></td>
                <td><input type="date" name="t5" value="" /></td>
                   <td colspan="2" style="color:red"><%
                        String err=request.getParameter("err");
                        %>
                        <%=err!=null?err:"" %></td>
                </tr>
                <tr>
                    <td><input type="submit" value="save" /></td>
                    <td><input type="reset" value="cancel" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        </form>
                        <%@include file="footer.jsp" %>