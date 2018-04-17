<%-- 
    Document   : admin _doc
    Created on : Apr 28, 2015, 11:28:57 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
  <%
        String select="select * from tbl_docreg;";
    ResultSet rs=con.getData(select);
            %>
            <h2>View Doctor</h2>
            <table style="" border="1">              
      <thead>
                <tr>
                    <th>Name</th>
                    <th>Specialization</th>
                    <th>Qualification</th>
                </tr>
            </thead>
            <tbody>
                <%
    while(rs.next())
    {
        %>
    
                <tr>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("specialization")%></td>
                    <td><%=rs.getString("qualification")%></td>
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
