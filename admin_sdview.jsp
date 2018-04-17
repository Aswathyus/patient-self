<%-- 
    Document   : admin_sdupdate
    Created on : May 22, 2015, 10:33:39 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<table style="" border="1">
    
    <%
        String select="select * from tbl_docshift;";
    ResultSet rs=con.getData(select);
            %>
        <tr>
            <td>Doctor_id</td>
            <td>Doctor_Name</td>
            <td>Shift</td>
            <td>From_date</td>
            <td>To_date</td>
        </tr>
        <%
        while(rs.next())
        {
            
        %>
        <tr>
            <td><%=rs.getString("doctor_id")%></td>
            <td><%=rs.getString("doctor_name")%></td>
            <td><%=rs.getString("shift")%></td>
            <td><%=rs.getString("from_date")%></td>
            <td><%=rs.getString("to_date")%></td>
        
        </tr>
        <%
        }
        %>
    </tbody>
</table>
