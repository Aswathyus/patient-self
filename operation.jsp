<%-- 
    Document   : operation
    Created on : 29 Jul, 2015, 2:17:59 PM
    Author     : user pc
--%>

<%@page import="java.text.SimpleDateFormat"%>
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
        var url="patient_appointment_ajax.jsp?id=" + document.searchForm.t1.value;
         
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
     <h2>ADD Operation</h2>
         <form name="searchForm" >
             <form  name="pataction" action="patientappaction.jsp">
          <table style="" border="0">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                
                
<tr>
                    <td><b>department</b></td>
                    <td><select name="t1" onchange="doProcessing()">
                            <option>Select</option><%  String q="select distinct(specialization) from tbl_docreg ";  
   ResultSet rsitem = con.getData(q);
                        while (rsitem.next()) {
                    %>
                    <option value="<%=rsitem.getString("specialization")%>"><%=rsitem.getString("specialization")%></option>
                    <%
                        }
                    %></option>
                        </select></td>
                    <td></td>
                </tr>
        </table>
            </form>
            <div id="tablediv">
                <table style="">
                <tr>
                    <td><b>doctor</b></td>
                    <td><select name="t2">
                            <option>Select</option>
                        </select></td>
                    <td></td>
                    <td></td>
                </tr>
                </div>
                 <tr>
                    <td><b>Date</b></td>
                    <td><input type="date" name="t3" value="" /></td>
                    <td></td>
                    <td colspan="2" style="color:red"><%
                        String err=request.getParameter("err");
                        %>
                        <%=err!=null?err:"" %></td>
                    

                    <%                    String id=request.getParameter("id");
                            %>
                            
                </tr>
                 </table>
                <table style="">
                <tr>
                    <td><input type="submit" value="SAVE" /></td>
                    <td><a style="font-size:medium;font-weight: bold;color:red;" href="view_operation.jsp">View Operation</a></td>
                    <td><input type="reset" value="CANCEL" /></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table> 
  </form>
                            <%@include file="footer.jsp" %>