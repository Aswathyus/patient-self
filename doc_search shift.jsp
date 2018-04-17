<%-- 
    Document   : doc_search shift
    Created on : Apr 28, 2015, 1:42:10 PM
    Author     : cyber
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<h2>View Doctors Shift</h2>
        <form action="admin_ssaction.jsp">
            <%
                 String select="select * from tbl_docshift where doctor_name='"+session.getAttribute("name").toString()+"'";
                SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();

String aa=format.format(d);
                
                ResultSet rs=con.getData(select);
                while(rs.next())
                {
                  String i=rs.getString("to_date");
                String dat=i;
Date d1 =new Date(format.parse(aa).getTime());
        Date d2 =new Date(format.parse(dat).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        if(days<1)
        {
            
        
                
                %>
            
        <table style="column-width:auto;" border="0">
            <style>
                tr,td,table{
            alignment-adjust: auto;
            column-width:auto;
                }
            </style>
                
                <tr>
                    <td><b>Doctor Name</b></td>
                    <td><input type="text" name="t2" value="<%=rs.getString("doctor_name")%>" readonly="readonly" /></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td><b>Shift</b></td>
                    <td><input type="text" name="t3" value="<%=rs.getString("shift")%>" readonly="readonly" /></td>
                    <td></td>
                </tr>
               <tr>
                    <td><b>From Date</b></td>
                    <td><input type="text" name="t4" value="<%=rs.getString("from_date")%>" readonly="readonly" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b> To Date</b></td>
                    <td><input type="text" name="t5" value="<%=rs.getString("to_date")%>" readonly="readonly" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
                    <%
        }
               
                
         }
                %>
        </form>  
                <%@include file="footer.jsp" %>