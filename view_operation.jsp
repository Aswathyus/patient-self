<%-- 
    Document   : view_operation
    Created on : 29 Jul, 2015, 2:41:06 PM
    Author     : user pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<h2>View Operation</h2>
<table border="2">
    
    <%
        String select="select * from tbl_operation where dname='"+session.getAttribute("name")+"' and dept='"+session.getAttribute("dept")+"';";
    ResultSet rs=con.getData(select);
            %>
        <tr>
            <td>Department</td>
            <td>&nbsp;&nbsp;&nbsp;Doctor Name</td>
            <td>&nbsp;&nbsp;&nbsp;Date</td>
           
        </tr>
        <%
        while(rs.next())
        {
            
        %>
        <tr>
            <td><%=rs.getString("dept")%></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("dname")%></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("opdate")%></td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>
            <%@include file="footer.jsp" %>