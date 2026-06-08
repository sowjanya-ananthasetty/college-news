<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        
        <title>JSP Page</title>
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
                    width: 14.278%;
                    border-radius:  0 0 50px 50px;
            }
            .tablink:hover {
                    background-color: #567E87;
            }
            .tabcontent {
                    color: white;
                    display: none;
                    padding: 20px 20px;
                    height: 100%;
                    overflow-y: scroll;
             }
            #All {background-color: rgba(0,0,0, 0.7);}
            #CSE {background-color: rgba(0,0,0, 0.7);}
            #ECE {background-color: rgba(0,0,0, 0.7);}
            #MECH {background-color: rgba(0,0,0, 0.7);}
            #EEE {background-color: rgba(0,0,0, 0.7);}
            #CIVIL {background-color: rgba(0,0,0, 0.7);}
            #PG {background-color: rgba(0,0,0, 0.7);}
            .news
            {
                
                margin-top: 200;
                position: absolute;
                //margin-left: 19%;
                width:75%;
                height:auto;
                background: #000;
            }
        </style>
    </head>
    <body>
        <div class="header" id="myHeader" >
            <div class='banner'>
                <img src='images/logo.png' width="80" height="80" alt='logo'/>
                <h3 style="position: absolute; top: 25px;left: 80px;font-size: 24px;color:#AF3602; font-family: 'Trebuchet MS'; font-weight: bolder;">NEC Digital College Magazine</h3>
                
            </div>
            <div style="postion:absolute; float:right; margin-top: 25px; margin-right: 50px;">
                <a href="index.jsp" class="btn1" style="text-decoration: none;"> Home </a>&nbsp;&nbsp;&nbsp;
                <a href="login.jsp" class="btn1" style="text-decoration: none;"> SignUp / SignIn </a>&nbsp;&nbsp;&nbsp;
                <a href="aboutus.jsp" class="btn1" style="text-decoration: none;"> About Us </a>
            </div>
            
        </div>
        <div class="main" style="">
            <div class="news">
                <button class="tablink" onclick="openPage('All', this, '#466AFC')" style="border-radius:  0 0 50px 0;" id="defaultOpen">ALL</button>
           <button class="tablink" onclick="openPage('CSE', this, '#466AFC')">CSE</button>
            <button class="tablink" onclick="openPage('ECE', this, '#9F0000')">ECE</button>
            <button class="tablink" onclick="openPage('MECH', this, ' #E90D38')">MECH</button>
            <button class="tablink" onclick="openPage('EEE', this, ' #979797')">EEE</button>
            <button class="tablink" onclick="openPage('CIVIL', this, ' #F1ED03')" >CIVIL</button>
            <button class="tablink" onclick="openPage('PG', this, ' #F1ED03')" style="border-radius:  0 0 0 50px;">PG</button>
            
            <div id="All" class="tabcontent" style="" align="center" >
               <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Education</h3>
                </div>
                    <%
                        Connection con1=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Education' and status='Accepted' AND department='ALL'";
                            Statement st1 = con1.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                
                 <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Entertainment</h3>
                </div>
                     <%
                        Connection con2=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Entertainment' and status='Accepted' AND department='ALL'";
                            Statement st1 = con2.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                         
            </div>
            <div id="CSE" class="tabcontent" style="" align="center">
                <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Education</h3>
                </div>
                    <%
                        Connection con3=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Education' and status='Accepted' AND department='CSE'";
                            Statement st1 = con3.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                
                 <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Entertainment</h3>
                </div>
                     <%
                        Connection con4=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Entertainment' and status='Accepted' AND department='CSE'";
                            Statement st1 = con4.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                        
                         
            </div>
             
           
            <div id="ECE" class="tabcontent" style="" align="center">
                <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Education</h3>
                </div>
                    <%
                        Connection con5=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Education' and status='Accepted' AND department='ECE'";
                            Statement st1 = con5.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                
                 <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Entertainment</h3>
                </div>
                     <%
                        Connection con6=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con6 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Entertainment' and status='Accepted' AND department='ECE'";
                            Statement st1 = con6.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                        
                         
            </div>
            <div id="MECH" class="tabcontent" style="" align="center">
                <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Education</h3>
                </div>
                    <%
                        Connection con7=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Education' and status='Accepted' AND department='MECH'";
                            Statement st1 = con7.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                
                 <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Entertainment</h3>
                </div>
                     <%
                        Connection con8=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con8 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Entertainment' and status='Accepted' AND department='MECH'";
                            Statement st1 = con8.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                         
            </div>
            <div id="EEE" class="tabcontent" style="" align="center" >
                <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Education</h3>
                </div>
                    <%
                        Connection con9=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con9 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Education' and status='Accepted' AND department='EEE'";
                            Statement st1 = con9.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                
                 <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Entertainment</h3>
                </div>
                     <%
                        Connection con10=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con10 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Entertainment' and status='Accepted' AND department='EEE'";
                            Statement st1 = con10.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                         
            </div>
           <div id="CIVIL" class="tabcontent" style="" align="center" >
                <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Education</h3>
                </div>
                    <%
                        Connection con11=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Education' and status='Accepted' AND department='CIVIL'";
                            Statement st1 = con11.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                
                 <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Entertainment</h3>
                </div>
                     <%
                        Connection con12=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con12 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Entertainment' and status='Accepted' AND department='CIVIL'";
                            Statement st1 = con12.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                         
            </div>
            <div id="PG" class="tabcontent" style="" align="center" >
                <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Education</h3>
                </div>
                    <%
                        Connection con13=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con13 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Education' and status='Accepted' AND department='PG'";
                            Statement st1 = con13.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                
                 <div style="border:3px #36E1F9 double; margin: 5px 0;border-left: none;border-right: none;border-top:none; width: 100%;">
                    <h3 style="color:#36E1F9;">Entertainment</h3>
                </div>
                     <%
                        Connection con14=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con14 = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                            String str1 = "select articlename, description, template from articles where category='Entertainment' and status='Accepted' AND department='PG'";
                            Statement st1 = con14.createStatement();
                            ResultSet rs1 = st1.executeQuery(str1);
                            while(rs1.next())
                            {
                                %>
                                <div align="center" style="width:200px;margin: 20px;position:relative;box-shadow: 5px 5px 10px #888888; display: inline-block;">
                                    <img src="mainImage.jsp?aname=<%=rs1.getString(1)%>" width="200" height="100" alt="image">
                                    <h5><%=rs1.getString(1)%></h5>
                                    <p style="font-size:10px;"><%=rs1.getString(2)%></p>
                                    <a href="template.jsp?aname=<%=rs1.getString(1)%>"><button>Read More</button></a>
                                </div>
                                <%
                            }
                        }catch(Exception e)
                        {
                        }
                    %>
                         
            </div>
            <!-- Swiper JS -->
            <script src="js/swiper-bundle.min.js"></script>

            <!-- JavaScript -->
            <script src="js/script.js"></script>
            
            <script language="javaScript">
                    // Get the element with id="defaultOpen" and click on it
                    document.getElementById("defaultOpen").click();
                function openPage(pageName, elmnt, color) {
                    // Hide all elements with class="tabcontent" by default */
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }

                    // Remove the background color of all tablinks/buttons
                    tablinks = document.getElementsByClassName("tablink");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].style.backgroundColor = "";
                    }
                    tablinks1 = document.getElementsByClassName("tablink1");
                    for (i = 0; i < tablinks1.length; i++) {
                        tablinks[i].style.backgroundColor = "";
                    }

                    // Show the specific tab content
                    document.getElementById(pageName).style.display = "block";

                    // Add the specific color to the button used to open the tab content
                    elmnt.style.backgroundColor = color;
                }
               //Function demonstrating the Href Method
            
        </script>
  </div>
 </div>
                    <div style="width:25%; height: 700px; margin: 0; position: absolute;right:0; background: transparent;">
            <div style="width:100%; background:#555; margin: 0;padding:0; " align="center">
                <button style="width:100%;background-color: #555;color: white;float: left;border: none;outline: none;padding: 14px 16px;font-size: 17px;">IMPORTANT LINKS</button>
                <!--<h3 style="background-color: #555;color: white;font-size: 17px;">IMPORTANT LINKS</h3>-->
            </div>
            <div style="padding:5px 20px;margin: 0; height: 50%; background: rgba(0,0,0, 0.7);color:#fff;text-align: justify; overflow-y: scroll; ">
               <marquee behavior="scroll" direction="down" height="90%" scrollamount="3">
                   <div style="height:100%;color:#ffffff; text-align: justify; padding:10px;">
                <%
                    Connection con = null;
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal","root","root");
                        String str = "SELECT title,link FROM urldata WHERE DATE(NOW()) >= DATE(ldate)";
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery(str);
                        while(rs.next())
                        {
                            %>
                            
                                <p style="color: #ff3333"><%=rs.getString(1)%></p>
                                <p style="color: #0000ff"><a href="<%=rs.getString(2)%>" target="_new"><%=rs.getString(2)%></a><sup>New</sup></p>
                                
                            
                            <%
                        }
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                %>
                </div>
                </marquee>
            </div>
            
        </div>
        <div style="width:25%; height: auto; margin-top:401px; position: absolute;right:0; background: transparent;">
            <div style="width:100%; background:#555; margin: 0;padding:0; " align="center" >
                <button style="width:100%;background-color: #555;color: white;float: left;border: none;outline: none;padding: 14px 16px;font-size: 17px;">GALLERY</button>
                <!--<h3 style="background-color: #555;color: white;font-size: 17px;">IMPORTANT LINKS</h3>-->
            </div>
            <div style="padding:5px 20px;margin: 0; height: 50%; background: rgba(0,0,0, 0.7);color:#fff;text-align: justify; overflow-y: scroll; ">
                <img src="images/narayana.jpg" width="150" height="200" style="position: absolute; padding: 10px;"/>
                <img src="images/Director.png" width="100" height="100" style="margin-left:150px; padding: 10px;"/>
                <img src="images/principal.jpg" width="100" height="100" style="margin-left:150px; padding: 10px;"/><br>
                 <img src="images/penchalaiah.jpg" width="100" height="100" style="position:absolute; padding: 10px;"/>
                <img src="images/hod.jpg" width="100" height="100" style="margin-left:150px; padding: 10px;"/>
                <img src="images/college.jpg" width="300" height="100" style="padding: 10px;"/>
            </div>
            
        </div>
    </body>
</html>