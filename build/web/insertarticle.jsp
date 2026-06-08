<html>
<head>
<title>Insert Article</title>
</head>
<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*"%>

<%
    ServletContext context = getServletContext();
    String dirName = context.getRealPath("images/");

    String aname = null;
    String dept = null;
    String cat = null;
    int ttype = 1;
    String desc = null;

    Connection connection = null;
    FileInputStream fs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/newsportal","root","root");

        // ✅ Handle multipart form
        MultipartRequest multi = new MultipartRequest(request, dirName, 10 * 1024 * 1024);

        // ✅ Get form values
        aname = multi.getParameter("aname");
        dept = multi.getParameter("dept");
        cat = multi.getParameter("cat");
        ttype = Integer.parseInt(multi.getParameter("ttype"));
        desc = multi.getParameter("desc");

        // ✅ Get uploaded file
        String filename = multi.getFilesystemName("img1");

        if(filename != null) {
            String fPath = context.getRealPath("images/" + filename);
            File file = new File(fPath);
            fs = new FileInputStream(file);

            String status = "Pending";
            String email = session.getAttribute("email").toString();

            PreparedStatement ps = connection.prepareStatement(
                "INSERT INTO articles(articlename, department, category, template, description, image, email, status) VALUES(?,?,?,?,?,?,?,?)"
            );

            ps.setString(1, aname);
            ps.setString(2, dept);
            ps.setString(3, cat);
            ps.setInt(4, ttype);
            ps.setString(5, desc);
            ps.setBinaryStream(6, fs, (int) file.length()); // ✅ FIXED
            ps.setString(7, email);
            ps.setString(8, status);

            int i = ps.executeUpdate();

            if(i > 0) {
                response.sendRedirect("addAtricle.jsp?msg=success");
            } else {
                response.sendRedirect("addAtricle.jsp?msg1=fail");
            }

        } else {
            // ❌ No file selected
            response.sendRedirect("addAtricle.jsp?msg1=nofile");
        }

    } catch (Exception e) {
        out.println(e.getMessage());
        e.printStackTrace();
    }
%>

</html>