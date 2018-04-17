<%-- 
    Document   : admin_staff
    Created on : Apr 28, 2015, 11:44:05 AM
    Author     : cyber
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
 <%
        String select="select distinct * from tbl_staffreg;";
    ResultSet rs=con.getData(select);
            %>
            <h2>View Staff</h2>
        <table style="" border="1">              
      <thead>
                <tr>
                    <th>Name</th>
                    <th>Id</th>
                    <th>Department</th>
                </tr>
            </thead>
            <tbody>
                <%
    while(rs.next())
    {
        %>
    
                <tr>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("Id")%></td>
                    <td><%=rs.getString("Department")%></td>
                    <td><img width="100px" height="100px" src="../photo/<%=rs.getString("photo")%>"</td>
                </tr>
                <%}
    %>
                <tr>
                                   
                 </tr>
                <tr>
                   
        
                   
            </tbody>
        </table> 
    <%@include file="footer.jsp" %>