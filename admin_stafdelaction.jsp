<%-- 
    Document   : admin_stafdelaction
    Created on : May 20, 2015, 12:11:10 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String na=request.getParameter("name1");
    String delete="delete from tbl_staffreg where name='"+na+"';";
    if(con.executeCommand(delete))
    {
        response.sendRedirect("admin_staffaction.jsp");
        
    }
%>