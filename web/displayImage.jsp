<%-- 
    Document   : displayImage
    Created on : 12 Apr, 2023, 12:58:49 PM
    Author     : SRIGANESH
--%>

<%@page import="java.io.InputStream"%>
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
        try
        { 
               String email = session.getAttribute("email").toString();
               session.setAttribute("email", email);
                Connection con = null;
	 
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
			String aname = request.getParameter("aname");
			Statement st=con.createStatement();
			String strQuery = "select image from articles where articlename='"+aname+"'" ;
			ResultSet rs = st.executeQuery(strQuery);
			String imgLen="";
			if(rs.next())
			{
				imgLen = rs.getString(1);
			}  
			rs = st.executeQuery(strQuery);
			if(rs.next())
			{
				int len = imgLen.length();
				byte [] rb = new byte[len];
				InputStream readImg = rs.getBinaryStream(1);
				int index=readImg.read(rb, 0, len);  
				st.close();
				response.reset();
				response.getOutputStream().write(rb,0,len); 
				response.getOutputStream().flush();        
			}
		
		
			
}
catch (Exception e)
{
    e.printStackTrace();
}
%>
    </body>
</html>
