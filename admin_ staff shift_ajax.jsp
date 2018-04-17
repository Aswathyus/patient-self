<%-- 
    Document   : admin_ staff shift_ajax
    Created on : Aug 1, 2015, 8:34:36 AM
    Author     : cyber world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
          <%
     String sid=request.getParameter("id");
     String condition="";
     if(!sid.equalsIgnoreCase("select")){
         condition=" AND id='"+sid+"' ";
     }
     String insert="insert into tbl_staffshift(staff_id) values('"+sid+"')";
     con.executeCommand(insert);
  %>  
  <form action="admin_ssaction.jsp">
  <table style="" border="0" class="gridtable">
      <input type="hidden" name="ssss" value="id"/>
          <tr>
                    <td><b>Staff Name</b></td>
                    <%  String q="select distinct(name) from tbl_staffreg where id='"+sid+"' ";  
   ResultSet rsitem = con.getData(q);
                        while (rsitem.next()) {
                    %>
                    <td><input readonly="readonly" type="text" name="t2" value="<%=rsitem.getString("name")%>" />
                    <%    
                        }
                      %>
                    <td></td>
                    <td></td>
                </tr>
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
                <tr>
                    <td><input type="submit" value="save" onclick="return valid()" /></td>
                    <td><input type="reset" value="cancel" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table> 
  </form>
      </div>
