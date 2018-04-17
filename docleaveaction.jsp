<%-- 
    Document   : docleaveaction
    Created on : May 11, 2015, 7:46:07 PM
    Author     : user
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String de=request.getParameter("t11");
    String name=request.getParameter("t0");
    String leave_date=request.getParameter("t1");
  String status=request.getParameter("t5");
    String reason=request.getParameter("t2");
    
    SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();

String aa=format.format(d);
String dat=leave_date;
Date d1 =new Date(format.parse(aa).getTime());
        Date d2 =new Date(format.parse(dat).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        if(days<1)
        {
    
    
  String s="insert into tbl_docleave(department,name,leave_date,reason,status) values('"+de+"','"+name+"','"+leave_date+"','"+reason+"','"+status+"')";
    if(con.executeCommand(s))
    {
        response.sendRedirect("save.jsp");
    } 
        }
    else
        
    {
        response.sendRedirect("doc_leave.jsp?err=Check Date!!");
    }   
            %>
