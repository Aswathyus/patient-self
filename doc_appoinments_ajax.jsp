<%-- 
    Document   : doc_appoinments_ajax
    Created on : Jun 20, 2015, 3:38:41 PM
    Author     : ANJU
--%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
 <%
     String auth=request.getParameter("sid");
     String condition="";
        if(!auth.equalsIgnoreCase("select")){
         condition=" AND date='"+auth+"' ";
     }
      String SELECT = "SELECT * from tbl_patapp where date='"+auth+"' and doctor='"+session.getAttribute("name")+"'";
        ResultSet rsBook = con.getData(SELECT);       
    %>
    <table style="margin-left:300px;" class="gridtable" border="1">
        <tr>
                    <th>Patient Number</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Age</th>
                    <th>Department</th>
                    <th>Doctor</th>
                    <th>Date</th>
                </tr>
            </thead>
            <%
            while (rsBook.next())
            {
%>
            <tbody>
                <tr>
                    <td><%=rsBook.getString("patno")%></td>
                    <td><%=rsBook.getString("name")%></td>
                    <td><%=rsBook.getString("address")%></td>
                    <td><%=rsBook.getString("age")%></td>
                    <td><%=rsBook.getString("department")%></td>
                    <td><%=rsBook.getString("doctor")%></td>
                    <td><%=rsBook.getString("date")%></td>
                </tr> 
                <%}%>
            </tbody>
        </table>     