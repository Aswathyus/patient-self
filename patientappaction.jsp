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
   
   
   
        String ib="SELECT id FROM tbl_operation ORDER BY id DESC LIMIT 1;";
        ResultSet iv=con.getData(ib);
        while(iv.next())
        {
            String vi=iv.getString("id");
        
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();

String aa=format.format(d);
String dat=da;
Date d1 =new Date(format.parse(aa).getTime());
        Date d2 =new Date(format.parse(dat).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        
        
        if(days<1)
        {
      
  String s="update tbl_operation set  dname ='"+name+"',opdate='"+da+"' where id='"+vi+"'";
        
    if(con.executeCommand(s))
        
    {
        String delete="delete from tbl_operation where opdate=1";
        con.executeCommand(delete);
        response.sendRedirect("save.jsp");
    } 
      }

        
      else
    
        {
        
        {
            
        response.sendRedirect("operation.jsp?err=Invalid date!!");
    }   
    }
    
        }
 %>
