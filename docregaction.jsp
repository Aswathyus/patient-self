<%-- 
    Document   : docregaction
    Created on : May 9, 2015, 11:56:33 AM
    Author     : User
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
    String special="";
    String gende="";
    String reli="";
    String cast="";
    String email="";
    String qual="";
    String phone="";
    String uname="";
    String exp="";
    String pass="";
   
    FileItem f_item = null;
    File proj_path = new File(config.getServletContext().getRealPath("/"));
    String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\PHOTO\\";
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
                if (f_item.getFieldName().equalsIgnoreCase("address")) {
                    address= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t3")) {
                    special= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("aj")) {
                   gende= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t4")) {
                    reli= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t5")) {
                    cast= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t6")) {
                    email= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t7")) {
                    qual= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t11")) {
                    exp= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t8")) {
                    phone= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t9")) {
                    uname= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("t10")) {
                 pass= f_item.getString();
                }
            }else {
                try {
                    if (f_item.getFieldName().equalsIgnoreCase("photo")) {
                        filename = f_item.getName();
                        File savedFile1 = new File(file_path + filename);
                        f_item.write(savedFile1);
                    }

                } catch (Exception e) {
                }
            }
        }

    }
     String s="insert into tbl_docleave(department,name,leave_date,reason,status) values('"+special+"','"+name+"','2018-01-01','null','1')";
con.executeCommand(s);
   String insertPost="insert into tbl_docreg(name,photo,address,specialization,gender,religion,cast,e_mail,qualification,phone_no,username,password,exp) values('"+name+"','"+filename+"','"+address+"','"+special+"','"+gende+"','"+reli+"','"+cast+"','"+email+"','"+qual+"','"+phone+"','"+uname+"','"+pass+"','"+exp+"')";
   if(con.executeCommand(insertPost)){
       response.sendRedirect("../LOGIN.jsp");
   }else
   {
    response.sendRedirect("doc_reg.jsp");
   }
   %>