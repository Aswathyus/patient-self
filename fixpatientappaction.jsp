<%-- 
    Document   : patientappaction
    Created on : May 11, 2015, 3:45:07 PM
    Author     : user
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String name=request.getParameter("t2");
    String da=request.getParameter("t3");
        String ib="SELECT id FROM tbl_fixedoperation ORDER BY id DESC LIMIT 1;";
        ResultSet iv=con.getData(ib);
        while(iv.next())
        {
            String vi=iv.getString("id");
  String s="update tbl_fixedoperation set  doctor_name ='"+name+"',day='"+da+"' where id='"+vi+"'";
        
    if(con.executeCommand(s))
        
    {
        String delete="delete from tbl_fixedoperation where day=1";
        con.executeCommand(delete);
        response.sendRedirect("admin_home.jsp");
    }    
    else{
        response.sendRedirect("fixoperation.jsp?err=Invalid date!!");
    } 
        }
 %>
