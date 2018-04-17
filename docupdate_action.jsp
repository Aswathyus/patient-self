<%-- 
    Document   : docupdate_action
    Created on : Aug 3, 2015, 10:31:53 AM
    Author     : cyber world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String a=request.getParameter("address");
    String b=request.getParameter("t3");
    String c=request.getParameter("t6");
    String d=request.getParameter("t7");
    String e=request.getParameter("t8");
    String f=request.getParameter("t9");
    String g=request.getParameter("t10");
    String h=session.getAttribute("id").toString();
    String UPDATE = "UPDATE tbl_docreg SET address='"+a+"',specialization='"+b+"',e_mail='"+c+"',qualification='"+d+"',phone_no='"+e+"',username='"+f+"',password='"+g+"' WHERE drid='"+h+"'";
        if (con.executeCommand(UPDATE)) {
            response.sendRedirect("save.jsp");
        } else {
            response.sendRedirect("doc_Profile.jsp?err=update cannot successfully");
        }
%>
