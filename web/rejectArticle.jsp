<%-- 
    Document   : acceptArticle
    Created on : 13 Apr, 2023, 9:25:40 AM
    Author     : SRIGANESH
--%>

<%@page import="Mail.MailSender"%>
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
            String email = session.getAttribute("email").toString();
            session.setAttribute("email",email);
            String aname = request.getParameter("aname");
            String dept = request.getParameter("dept");
            String status ="Rejected";
            int i=0;
            String mail;
            Connection con = null;
            String msg = "Sorry! Ur Article Rejected";
            boolean flag =false;
            
            try{
                MailSender mailSender = new MailSender();
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                String str = "select email from articles where articlename='"+aname+"'";
                System.out.println(str);
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(str);
                
                if(rs.next())
                {
                    mail = rs.getString(1);
                    flag = mailSender.sendMail(mail,"Article Rejected",msg);
                    i++;
                }
                System.out.println("gghcjhsbkjsanfls;dflsdlknlsdvn");
                String str1 = "update articles set status='"+status+"' where articlename='"+aname+"'";
                
                Statement st1 = con.createStatement();
                
                int j = st1.executeUpdate(str1);
                
                //int j = pst.executeUpdate();
                if(i>0&&j>0)
                {
                    response.sendRedirect("aViewArticles.jsp?msg2=success");
                }
                else
                {
                    response.sendRedirect("aViewArticles.jsp?");
                }
                
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            
            %>
          
    </body>
</html>
