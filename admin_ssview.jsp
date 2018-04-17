<%-- 
    Document   : admin_ssupdate
    Created on : May 22, 2015, 10:32:32 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>

<table style="" border="1">
    
    <%
        String select="select distinct * from tbl_staffshift;";
    ResultSet rs=con.getData(select);
            %>
        <tr>
            <td>Staff_id</td>
            <td>Staff_name</td>
            <td>Shift</td>
            <td>From_date</td>
            <td>To_date</td>
        </tr>
        <%
        while(rs.next())
        {
            
        %>
        <tr>
            <td><%=rs.getString("staff_id")%></td>
            <td><%=rs.getString("staff_name")%></td>
            <td><%=rs.getString("shift")%></td>
            <td><%=rs.getString("from_date")%></td>
            <td><%=rs.getString("to_date")%></td>
            <td><a href="admin_ssupdate.jsp?id=<%=rs.getString("staff_id")%>">Update</a></td>
            
        </tr>
        <%
        }
        %>
    </tbody>
</table>
