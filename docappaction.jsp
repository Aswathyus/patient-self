<%-- 
    Document   : docappaction
    Created on : May 11, 2015, 7:57:20 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<table style="" border="1">
    
    <%
        String select="select * from tbl_docleave where ";
    ResultSet rs=con.getData(select);
            %>
        <tr>
            <td>Name</td>
            
            
            <td>Department</td>
            <td>Doctor</td>
        </tr>
        <%
        while(rs.next())
        {
            
        %>
        <tr>
            <td><%=rs.getString("name")%></td>
            
            <td><%=rs.getString("department")%></td>
            <td><%=rs.getString("doctor")%></td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>
        <%@include file="footer.jsp" %>