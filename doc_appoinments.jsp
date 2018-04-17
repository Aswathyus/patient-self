<%-- 
    Document   : doc_appoinments
    Created on : Apr 28, 2015, 1:32:47 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
 <script type="text/javascript">
    var request;
    function getRequest()
    {
        if (window.XMLHttpRequest)
            return new XMLHttpRequest();
        else if (winodw.ActiveXObject)
            return new ActiveXObject("Microsoft.XMLHTTP");
        else
            return null;
    }
    function doProcessing()
    {
        request = getRequest();
        var url="doc_appoinments_ajax.jsp?sid=" + document.searchForm.txtid.value;
         
            request.open("GET", url, true);
           
            request.onreadystatechange = function()
            {
                if (request.readyState == 4 || request.status == 200)
                {
                    document.getElementById("tablediv").innerHTML = request.responseText;
                }
            }
            request.send(null);
    }
</script>
<h2>View Appointments</h2>
<form name="searchForm">
    <form  name="pataction" action="">
    <table><tr><td><%
    String err=request.getParameter("err");
    %><%=(err!=null?err:"")%></td></tr></table>
<table style="" border="2">
    <tbody>
        <tr>
            <td>Date</td>
            <td><select onchange="doProcessing()" name="txtid">
                    <option>Select</option>
                    <%  String q="select distinct(date) from tbl_patapp ";  
   ResultSet rsitem = con.getData(q);
                        while (rsitem.next()) {
                    %>
                    <option value="<%=rsitem.getString("date")%>"><%=rsitem.getString("date")%></option>
                    <%
                        }
                    %>
                </select></td>
        </tr>
    </tbody>
</form>
</table>
                <div id="tablediv">
                    <table style="" border="2" class="gridtable">
            <thead>
                <tr>
                    <th>Patient Number</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Age</th>
                    <th>Case</th>
                    <th>Department</th>
                    <th>Doctor</th>
                    <th>Date</th>
                </tr>
            </thead>
            <% String query= "select * from tbl_patapp where doctor='"+session.getAttribute("name")+"';";
            ResultSet rs=con.getData(query);
            while (rs.next())
            {
%>
            <tbody>
                <tr>
                    <td><%=rs.getString("patno")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("age")%></td>
                    <td><%=rs.getString("cases")%></td>
                    <td><%=rs.getString("department")%></td>
                    <td><%=rs.getString("doctor")%></td>
                    <td><%=rs.getString("date")%></td>
                </tr> 
                <%}%>
            </tbody>
        </table>
    </form>
                <%@include file="footer.jsp" %>