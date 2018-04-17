<%-- 
    Document   : admin_ssaction
    Created on : May 17, 2015, 4:56:29 PM
    Author     : user
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String staff_id=request.getParameter("ssss");
    String staff_name=request.getParameter("t2");
     String shift=request.getParameter("t3");
     String from_date=request.getParameter("t4");
     String to_date=request.getParameter("t5");
    
     
        String ib="SELECT id FROM tbl_staffshift ORDER BY id DESC LIMIT 1;";
        ResultSet iv=con.getData(ib);
        while(iv.next())
        {
            String vi=iv.getString("id");
            
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
        
  if((days<3)&&(days1<1))
  {
    String s="update tbl_staffshift set staff_name='"+staff_name+"',shift='"+shift+"',from_date='"+from_date+"',to_date='"+to_date+"' where id='"+vi+"';";      
   
    if(con.executeCommand(s))
        
    {
        String delete="delete from tbl_staffshift where staff_name=z";
        con.executeCommand(delete);
        response.sendRedirect("save.jsp");
    } 
      }
      else
        { 
        response.sendRedirect("admin_ staff shift.jsp?err=Invalid date!!");
    } 
        }
            %>
