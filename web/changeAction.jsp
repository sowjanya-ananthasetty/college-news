<%-- 
    Document   : changeAction
    Created on : 31 Mar, 2023, 11:37:03 AM
    Author     : SRIGANESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email = session.getAttribute("email").toString();
            session.setAttribute("email",email);
            
            String old = request.getParameter("opwd");
            String npwd  = request.getParameter("npwd");
            
            Connection con = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                PreparedStatement pst = con.prepareStatement("update login set password=? where username=? and password=?");
                pst.setString(1, npwd);
                pst.setString(2, email);
                pst.setString(3, old);
                
                PreparedStatement pst1 = con.prepareStatement("update register set password=? where email=? and password=?");
                pst1.setString(1, npwd);
                pst1.setString(2, email);
                pst1.setString(3, old);
                
                int i = pst.executeUpdate();
                int j = pst1.executeUpdate();
                
                if(i>0 && j>0)
                {
                       response.sendRedirect("mchangePassword.jsp?msg=success");
                       
                }
                else
                {
                    response.sendRedirect("mchangePassword.jsp?msg1=fail");
                }
                
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            
        %>
    </body>
</html>
