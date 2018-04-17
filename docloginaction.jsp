<%-- 
    Document   : doc login action
    Created on : May 9, 2015, 11:45:17 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="../Doctor/header.jsp" %>
<script language="javaScript">
    alert('Login Successfully');
    </script>
    <table border="0" align="center">
        <p align="center">
            <font color="blue" style="font-size:medium;font-weight:bold" border="0">Welcome Doctor <%=session.getAttribute("name")%></font></p>
    </table>
            <%@include  file="../Doctor/footer.jsp"%>

