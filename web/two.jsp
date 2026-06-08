<%-- 
    Document   : one
    Created on : 26 Apr, 2023, 12:03:05 PM
    Author     : SRIGANESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            
            String aname = session.getAttribute("aname").toString();
            String desc = null;
            Connection con = null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                
                String sql = "select description from articles where articlename='"+aname+"'";
                
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                
                if (rs.next())
                {
                    desc = rs.getString(1);
                }
                 
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            %>
            <div style="border:1px #B10000 solid;border-radius: 30px;padding:20px;position: absolute;">
                <h2><%=aname%></h2>
                <hr>
                <p><%=desc%></p>
                <a href="index.jsp"><img src="images/back.png" width="60" height="60" style="float: right;"/></a>
            </div>
            <div style="float:right; margin-right:50px;">
                <img src="mainImage.jsp?aname=<%=aname%>" width="250" height="250" style="border:10px #B10000 solid;"/>
            </div>
            
            <%
            
        %>
    </body>
</html>
