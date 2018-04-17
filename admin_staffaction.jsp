<%-- 
    Document   : admin_staffaction
    Created on : May 20, 2015, 10:42:47 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<table border="1">
    
    <%
        String select="select * from tbl_staffreg;";
    ResultSet rs=con.getData(select);
            %>
        <tr>
            <td>Name</td>
            <td>Id</td>
            <td>Department</td>
        </tr>
        <%
        while(rs.next())
        {
            
        %>
        <tr>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("id")%></td>
            <td><%=rs.getString("department")%></td>
            <td><a href="admin_stafdelaction.jsp?name1=<%=rs.getString("name")%>">Delete</a></td>

        </tr>
        <%
        }
        %>
    </tbody>
</table>
