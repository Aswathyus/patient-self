<%-- 
    Document   : admin_sdaction
    Created on : May 17, 2015, 4:55:28 PM
    Author     : user
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    
   
  
    String doctor_name=request.getParameter("t2");
     String shift=request.getParameter("t3");
     String from_date=request.getParameter("t4");
     String to_date=request.getParameter("t5");
       SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();

String aa=format.format(d);
String dat=from_date;
Date d1 =new Date(format.parse(aa).getTime());
        Date d2 =new Date(format.parse(dat).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        
        String dat1=to_date;

        Date d3 =new Date(format.parse(dat1).getTime());
        long difference1=d1.getTime()-d3.getTime();
        int days1=(int)(difference1/(24*60*60*1000));
        
  if((days<1)&&(days1<1))
  {
    
  
    
    String s="insert into tbl_docshift values('"+doctor_name+"','"+shift+"','"+from_date+"','"+to_date+"')";
    if(con.executeCommand(s))
    {
        response.sendRedirect("save.jsp");
    } 
  }
    else
    {
        response.sendRedirect("admin_shift doc.jsp?err=Check Date!!");
    }   
            %>
