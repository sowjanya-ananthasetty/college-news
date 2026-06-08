<%-- 
    Document   : register
    Created on : 30 Mar, 2023, 4:16:18 PM
    Author     : SRIGANESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String pwd = request.getParameter("password");
            int auth = 1;
            
            Connection con = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                
                PreparedStatement pst = con.prepareStatement("insert into register(firstname,lastname,email,mobile,password) values(?,?,?,?,?)");
                pst.setString(1, fname);
                pst.setString(2, lname);
                pst.setString(3, email);
                pst.setString(4, phone);
                pst.setString(5, pwd);
                
                int i = pst.executeUpdate();
                PreparedStatement pst1 = con.prepareStatement("insert into login(username,password,auth) values(?,?,?)");
                pst1.setString(1,email);
                pst1.setString(2,pwd);
                pst1.setInt(3,auth);
                
                int j = pst1.executeUpdate();
                
                if(i>0&&j>0)
                {
                    response.sendRedirect("login.jsp?msg3=success");
                }
                else
                {
                    response.sendRedirect("login.jsp?msg2=fail");
                }
            }catch(Exception e)
            {
                   e.printStackTrace();
            }
        %>
    </body>
</html>
