<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign Up Signin Form Template Example</title>
  <link rel="stylesheet" href="./css/style.css">
<style>
  body, html{
                margin:0;
                padding: 0;
                height: 100%;
                background:url('images/bg.jpg') repeat-y;
                background-size: cover;
                font-family: 'Trebuchet MS', sans-serif;
            }
            .header{
                margin: 0;
                padding: 5px;
                width:100%;
                height: 15%;
                background: #fff;
                overflow: hidden;
                position: relative;
            }
            .banner{
                width:20%;
            }
            .banner img {
                float: left;
                //background: #555;
            }
            .banner h3 {
                position: absolute;
                top: 5px;
                left: 80px;
                font-size: 24px;
                color:#AF3602;
            }
            .btn1{
                 width:150px;
                 height: auto;
                 padding:10px 10px;
                 border-radius:50px;
                 background: #001926;
                 color:#fff;
                 outline: none;
                 border: none;
                 box-shadow: 2px 2px 2px #F7A155;
                 
            }
            a{
                text-decoration: none;
            }
            .btn1:hover{
                
                background: #F98F31;
                color:#000;
                box-shadow: 2px 2px 2px #000;
                font-weight: bold;
            }
           .tablink {
                    background-color: #555;
                    color: white;
                    float: left;
                    border: none;
                    outline: none;
                    cursor: pointer;
                    padding: 14px 16px;
                    font-size: 17px;
                    width: 20%;
                    border-radius:  0 0 50px 50px;
            }

            .tablink:hover {
                    background-color: #567E87;
            }

            /* Style the tab content (and add height:100% for full page content) */
            .tabcontent {
                    color: white;
                    display: none;
                    padding: 20px 20px;
                    height: 100%;
                    overflow-y: scroll;
             }

            #Home {background-color: rgba(0,0,0, 0.7);}
            #News {background-color: rgba(0,0,0, 0.7);}
            #Contact {background-color: rgba(0,0,0, 0.7);}
            #About {background-color: rgba(0,0,0, 0.7);}
            .news
            {
                margin-top: 200;
                position: absolute;
                //margin-left: 19%;
                width:75%;
                height:auto;
                background: #000;
            }
            .sideview
            {
                margin-top: 200;
                position: absolute;
                padding: 10px;
                width:19%;
                height: auto;
                //background: #02647C;
            }
            .btns
            {
                
                background: #FAC675;
                padding:5px;
            }
           
            table{
                width: 100%;
                padding:20px;
                font-family: 'Trebuchet MS';
                 
            }
            th
            {
                border:1px chartreuse solid;
                color:#FFEC00;
                padding: 5px;
                font-size: 18px;
                font-weight: bolder;
                text-align: center;
            }
            td 
            {
                border:1px chartreuse solid;
                color:#fff;
                padding: 5px;
                font-family: 'Trebuchet MS';
                font-size:16px;
             }
             tr{
                 text-align: center;
             }
</style>    
</head>
<body>
<!-- partial:index.partial.html -->
<html lang="en">
<head>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  </head>

<body>
     <%
            String email = session.getAttribute("email").toString();
            session.setAttribute("email", email);
            
            if(request.getParameter("msg")!=null)
            {
                out.println("<script>alert('Login Successful.')</script>");
            }
        %>
    <div class="header" id="myHeader" >
            <div class='banner'>
                <img src='images/logo.png' width="80" height="80" alt='logo'/>
                <h3 style="position: absolute; top: 5px;left: 80px;font-size: 24px;color:#AF3602; font-family: 'Trebuchet MS'; font-weight: bolder;">NEC Digital College Magazine</h3>
                
            </div>
            <div style="postion:absolute; float:right; margin-top: 25px; margin-right: 50px;">
                <a href="memberHome.jsp" class="btn1" style="text-decoration: none;"> Home </a>&nbsp;&nbsp;&nbsp;
                <a href="addAtricle.jsp" class="btn1" style="text-decoration: none;"> Add Article </a>&nbsp;&nbsp;&nbsp;
                <a href="viewMArticles.jsp" class="btn1" style="text-decoration: none;"> View Articles </a>&nbsp;&nbsp;&nbsp;
                <a href="mchangePassword.jsp" class="btn1" style="text-decoration: none;"> Change Password</a>
                <a href="index.jsp" class="btn1" style="text-decoration: none;"> Logout</a>
            </div>
            
            
        </div>
    <div align="center"  style="background: rgba(0,0,0,0.7);margin: 0; width: 100%; height:600px;padding:50px; overflow-y:scroll; ">
        <p style="font-family: 'Trebuchet MS'; font-size:24px; padding: 20px; font-weight: bolder; color:#FFF;">View Articles Status</p>
        <table cellspacing="20px">
            <tr align="center">
                <th>S. No</th>
                <th>Article Image</th>
                <th>Article Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Status</th>
            </tr>
            
            <%
                    Connection con = null;
                    try
                    {
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                        String str = "select articlename, category, image, description, status from articles where email='"+email+"'";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(str);
                        int i = 0;
                        while(rs.next()){
                            i = i+1;
                            %>
                            <tr align="center">
                                <td><%=i%></td>
                                <td><img src="displayImage.jsp?aname=<%=rs.getString(1)%>" width="100" height="100" alt="" style="padding:5px;"/></td>
                                <td><%=rs.getString(1)%></td>
                                 <td><%=rs.getString(2)%></td>
                                 <td><%=rs.getString(4)%></td>
                                 <td><%=rs.getString(5)%></td>
                                 
                                 
                            </tr>
                            <%
                        }
                    }catch(Exception e)
                    {
                        e.printStackTrace();
                    }
                    
            %>
        </table>
    </div>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
<!-- partial -->
  <script  src="./js/script.js"></script>
  
</body>
</html>
