<%-- 
    Document   : admin_ssupdateaction
    Created on : May 22, 2015, 10:59:46 AM
    Author     : user
--%>

<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String id="";
    String name="";
    String shift="";
    String from="";
    String to="";    
    
   
   
    FileItem f_item = null;
   
//checking if request cotains multipart data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        //declaring a list of form fields
        List items_list = null;

        //assigning fields to list 'items_list'
        try {
            items_list = upload.parseRequest(request);
        } catch (FileUploadException ex) {
            out.println(ex);
        }

        //declaring iterator
        Iterator itr = items_list.iterator();

        //iterating through the list 'items_list'
         while (itr.hasNext()) {
            //typecasting next element in items_list as fileitem
            f_item = (FileItem) itr.next();
            if (f_item.isFormField()) {
                if (f_item.getFieldName().equalsIgnoreCase("t1")) {
                    id= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t2")) {
                    name= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t3")) {
                    shift= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t4")) {
                    from= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t5")) {
                    to= f_item.getString();
                }
                
            }else {
                try {
                    

                } catch (Exception e) {
                }
            }
        }

    }
      
    String update="update tbl_staffshift set staff_name='"+name+"',shift='"+shift+"',from_date='"+from+"',to_date='"+to+"' where staff_id='"+id+"'";
    if(con.executeCommand(update))
    {
        response.sendRedirect("admin_ssview.jsp");
    }
    else
    {
        response.sendRedirect("admin_ssupdate.jsp");
    }
    
    
    
    
    %>