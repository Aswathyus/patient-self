<%-- 
    Document   : message
    Created on : 18 Jul, 2015, 10:56:17 AM
    Author     : cyber world
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<%
    String select1="select * from tbl_docleave where  name='"+session.getAttribute("name")+"' order by leave_date asc;";
    ResultSet rs1=con.getData(select1);
    while(rs1.next())
    {
        String a="1";
        String b=rs1.getString("leave_date");
        String c=rs1.getString("status");
        String d=rs1.getString("name");
        String dept=rs1.getString("department");
    if(c.equals(a)){
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date da=new java.util.Date();
        String aa=format.format(da);
                  String i=rs1.getString("leave_date");
                String dat=i;
        Date d1 =new Date(format.parse(aa).getTime());
        Date d2 =new Date(format.parse(dat).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        if(days<1)
        {%>
        <marquee behavoir='scroll' direction='right'>
            <font color='red' size="5"> <b> Leave Sanction For <%=dept%> Dr.<%=d%> ON <%=b%></b>
                </marquee>
        <%
        
        }
    }
                }
                
            %>
            
            
            <!--==============================content================================-->
            <%@include file="footer.jsp" %>