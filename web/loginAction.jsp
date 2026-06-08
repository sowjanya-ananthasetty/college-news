<%-- 
    Document   : loginAction
    Created on : 30 Mar, 2023, 3:34:45 PM
    Author     : SRIGANESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String email = request.getParameter("email");
           String pwd = request.getParameter("password");
           
           Connection con = null;
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
               Statement stmt = con.createStatement();
               
               String str = "select * from login where username='"+email+"' and password='"+pwd+"'";
               System.out.println(str);
               ResultSet rs = stmt.executeQuery(str);
               int auth;
               
               if(rs.next())
               {
                   auth = rs.getInt("auth");
                   
                   if(auth == 0)
                   {
                       response.sendRedirect("adminHome.jsp");
                       session.setAttribute("email", email);
                   }
                   else
                   {
                       response.sendRedirect("memberHome.jsp");
                       session.setAttribute("email", email);
                   }
               }
               else
               {
                   response.sendRedirect("login.jsp?msg1=fail");
               }
               
           }catch(Exception e)
           {
               e.printStackTrace();
           }
       %>
    </body>
</html>
