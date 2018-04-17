<%-- 
    Document   : admin_docdelaction
    Created on : May 20, 2015, 11:48:11 AM
    Author     : user
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String id=request.getParameter("uid");
String status=request.getParameter("status");
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();
String dateoflike=format.format(d);

    String update="update tbl_docleave set status='"+status+"' where id='"+id+"';";
    if(con.executeCommand(update))
    {
        response.sendRedirect("admin_docaction.jsp?err=Leave has been approoved ");
    }else
    {
        response.sendRedirect("admin_docaction.jsp?err=Server error while processing the request, please try again after some time.");
    }
%>