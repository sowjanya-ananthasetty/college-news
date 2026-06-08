<%-- 
    Document   : template
    Created on : 26 Apr, 2023, 11:42:53 AM
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
        <h1>Hello World!</h1>
        <%
            
            int tno = 0;
            
            String aname=request.getParameter("aname");
            session.setAttribute("aname", aname);
            Connection con = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                String sql = "select template from articles where articlename='"+aname+"'";
                
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                
                if(rs.next())
                {
                    tno = rs.getInt(1);
                }
                
                if(tno == 1)
                {
                    response.sendRedirect("one.jsp");
                    
                }
                else if(tno == 2)
                {
                    response.sendRedirect("two.jsp");
                }
                else if(tno == 3)
                {
                    response.sendRedirect("three.jsp");
                }
                else
                {
                    response.sendRedirect("index.jsp?msg=fail");
                }
                
                
            }catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
