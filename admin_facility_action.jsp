<%-- 
    Document   : admin_facility_action
    Created on : Jul 19, 2015, 12:45:49 PM
    Author     : ANJU
--%>

<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.hospitalisation.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
String name="";
    String filename="";
    String address="";
   
    FileItem f_item = null;
    File proj_path = new File(config.getServletContext().getRealPath("/"));
    String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\photo\\";
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
                    name= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t3")) {
                    address= f_item.getString();
                }
               
            }else {
                try {
                    if (f_item.getFieldName().equalsIgnoreCase("t2")) {
                        filename = f_item.getName();
                        File savedFile1 = new File(file_path + filename);
                        f_item.write(savedFile1);
                    }

                } catch (Exception e) {
                }
            }
        }

    }
   String insertPost="insert into tbl_facility values('"+name+"','"+filename+"','"+address+"')";
   if(con.executeCommand(insertPost)){
       response.sendRedirect("save.jsp");
   }else
   {
    response.sendRedirect("admin_facility.jsp");
   }
   %>