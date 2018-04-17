<%-- 
    Document   : admin_staff shift
    Created on : May 2, 2015, 9:17:13 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="../Scripts/stafshift.js" type="text/javascript"></script>
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
        var url="admin_ staff shift_ajax.jsp?id=" + document.searchForm.t1.value;
         
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
     <h2>ADD Staff Shift</h2>
         <form name="searchForm" >
             <form  name="pataction" action="admin_ssaction.jsp">
          <table style="" border="0">
            <tbody>
<tr>
                    <td><b>Staff ID</b></td>
                    <td><select name="t1" onchange="doProcessing()">
                            <option>Select</option>
                            <%  
                                String disid=request.getParameter("id");
                               String q="select distinct(id) from tbl_staffreg ";  
   ResultSet rsitem = con.getData(q);
                        while (rsitem.next()) {
                    %>
                    <option value="<%=rsitem.getString("id")%>"><%=rsitem.getString("id")%></option>
                    <%
                        }
                    %>
                        </select></td>
            <input type="hidden" name="dsid" value="<%=disid%>"/>
                    <td></td>
                </tr>
        </table>
            </form>
            <div id="tablediv">
                <table style="" border="0">
                <tr>
                     <td><b>Staff Name</b></td>
                     <td><input readonly="readonly" type="text" name="t2" value="" /></td>
                </tr>
                </div>
                 <tr>
                    <td><b>Shift</b></td>
                    <td><select name="t3">
                            <option>Select</option>
                            <option>Morning</option>
                            <option>Night</option>
                        </select></td>
                    <td></td>
                </tr>
               <tr>
                    <td><b>From Date</b></td>
                    <td><input type="date" name="t4" value="" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td><b> To Date</b></td>
                    <td><input type="date" name="t5" value="" /></td>
                     <td colspan="2" style="color:red"><%
                        String err=request.getParameter("err");
                        %>
                        <%=err!=null?err:"" %></td>
                </tr>
                  <%                    String id=request.getParameter("id");
                            %>
                 </table>
                 <table style="">
                <tr>
                    <td><input type="submit" value="save" onclick="return valid()" /></td>
                    <td><input type="reset" value="cancel" /></td>
                    <td></td>
                </tr>
                 </table>
  </form>
                            <%@include file="footer.jsp" %>