<%-- 
    Document   : insertUrl
    Created on : 13 Apr, 2023, 3:35:52 PM
    Author     : SRIGANESH
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String title = request.getParameter("uname");
            String link = request.getParameter("url");
            String ldate = request.getParameter("ldate");
            
            
            
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");  
            java.util.Date date = formatter.parse(ldate);
            //String strDate = formatter.format(ldate);  
            java.sql.Date sdate = new java.sql.Date(date.getTime());
            Connection con = null;
            try
            {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                PreparedStatement pst = con.prepareStatement("insert into urldata(title,link,ldate) values(?,?,?)");
                
                pst.setString(1, title);
                pst.setString(2, link);
                pst.setDate(3, sdate);
                
                int i= pst.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("addUrl.jsp?msg=success");
                }
                else
                {
                       response.sendRedirect("addUrl.jsp?msg1=fail");
                }
                
            }catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
