<%-- 
    Document   : admin_docaction
    Created on : May 20, 2015, 10:27:01 AM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<style>
    .visi{
        display:none;
    }
</style>
<script>
    $(document).ready(function(){
//        $('.commentDiv').css('display','none');
        $('.like').on('click',function(e){
            e.preventDefault();
            $.href=$(this).attr('href');
            window.location=$.href;
        });
         $('.unlike').on('click',function(e){
            e.preventDefault();
            $.href=$(this).attr('href');
            window.location=$.href;
        });
    });
</script>
<h2>Doctor Leave</h2>
<table style="" border="1">
    
    <%
        String select="select * from tbl_docleave;";
    ResultSet rs=con.getData(select);
            %>
        <tr>
            <td>Doctor Name</td>
            <td>Department</td>
            <td>Leave Date</td>
            <td>Reason</td>
        </tr>
        <%
        while(rs.next())
        {
            
        %>
        <tr>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("department")%></td>
            <td><%=rs.getString("leave_date")%></td>
            <td><%=rs.getString("reason")%></td>
            <td>
                                        <%
                                        if(rs.getString("status")==null || rs.getString("status").equals("0")){
                                        %>
                                        <a href="admin_docdelaction.jsp?uid=<%=rs.getString("id")%>&status=1" class="like">Approve</a>
                                        <%
                                        }else{
                                        %>
                                        <a href="admin_docdelaction.jsp?uid=<%=rs.getString("id")%>&status=0" class="unlike">Reject</a>
                                        <%
                                        }
                                        %>
           </td>
                               
        </tr>
        <%
        }
        %>
    </tbody>
</table>
        <%@include file="footer.jsp" %>
