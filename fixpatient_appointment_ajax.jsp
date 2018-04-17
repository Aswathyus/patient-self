<%-- 
    Document   : patient_appointment_ajax
    Created on : 27 Jul, 2015, 8:23:47 PM
    Author     : cyber world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
   
          <%
     String id=request.getParameter("id");
     String condition="";
     if(!id.equalsIgnoreCase("select")){
         condition=" AND specialization='"+id+"' ";
     }
     
     
     String insert="insert into tbl_fixedoperation (department) values('"+id+"')";
     con.executeCommand(insert);
  %>  
                
      
  <form action="fixpatientappaction.jsp">

           
  <table border="0" class="gridtable">
           

                <tr>
                    <td><b>doctor</b></td>
                    <td><select name="t2">
                            <option>Select</option>
                            <%  String q="select distinct(name) from tbl_docreg where specialization='"+id+"' ";  
   ResultSet rsitem = con.getData(q);
                        while (rsitem.next()) {
                    %>
                    <option value="<%=rsitem.getString("name")%>"><%=rsitem.getString("name")%></option>
                    <%
                            
                        }
                      %>
                    <td></td>
                    <td></td>
                </tr>
                    <td><b>Day</b></td>
                    <td><select name="t3">
                            <option>Select</option>
                            <option>Sunday</option>
                            <option>Monday</option>
                            <option>Tuesday</option>
                            <option>Wednesday</option>
                            <option>Thursday</option>
                            <option>Friday</option>
                            <option>Saturday</option>
                        </select></td>
                    <td></td>
                    <td colspan="2" style="color:red"><%
                        String err=request.getParameter("err");
                        %>
                        <%=err!=null?err:"" %></td>
                </tr>
                <tr>
                    <td><input type="submit" value="SAVE" /></td>
                    <td><input type="reset" value="CANCEL" /></td>
                    <td></td>
                    <td></td>
   <tr>
            </tbody>
        </table> 
  </form>
      </div>
