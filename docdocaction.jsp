<%-- 
    Document   : docdocaction
    Created on : May 11, 2015, 7:58:05 PM
    Author     : user
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<table border="1">
    
    <%
        String select="select * from tbl_docsal;";
    ResultSet rs=con.getData(select);
            %>
        <tr>
            <td>Doctor_id</td>
            <td>Name</td>
            <td>Department</td>
        </tr>
        <%
        while(rs.next())
        {
            
        %>
        <tr>
            <td><%=rs.getString("doctor_id")%></td>
            
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("department")%></td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>
