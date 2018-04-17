<%-- 
    Document   : admin_ssupdate
    Created on : May 22, 2015, 10:51:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
        <form  method="post" enctype="multipart/form-data" action="admin_ssupdateaction.jsp">
           
            
        <table style="" border="0">
             <%
                String idd=request.getParameter("id");
                String select="select * from tbl_staffshift where staff_id='"+idd+"'";
                ResultSet rs=con.getData(select);
                while(rs.next())
                {
                    
                
                %>
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><b>Staff ID</b></td>
                    <td><input type="text" name="t1" value="<%=rs.getString("staff_id")%>"  /></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Staff Name</b></td>
                    <td><input type="text" name="t2" value="<%=rs.getString("staff_name")%>" /></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td><b>Shift</b></td>
                    <td><input type="text" name="t3" value="<%=rs.getString("shift")%>" /></td>
                    <td></td>
                </tr>
               <tr>
                    <td><b>From Date</b></td>
                    <td><input type="text" name="t4" value="<%=rs.getString("from_date")%>" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b> To Date</b></td>
                    <td><input type="text" name="t5" value="<%=rs.getString("to_date")%>" /></td>
                    <td></td>
                </tr>
                    <%
                }
                %>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update" /></td>
                    <td><input type="reset" value="Update" /></td>
                </tr>
                    
            </tbody>
        </table>
                
        </form>
                <%@include file="footer.jsp" %>