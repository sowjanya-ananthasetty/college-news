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
           .main
           {
               margin: 0;
               width: 600px;
               height: auto;
               background: rgba(255,255,255, 0.7);
               
           }
           table{
               width:400px;
               height: 200px;
               border:1px solid #B10000;
               border-radius: 50px;
               position:relative;
               float:left;
               padding:10px;
               
           }
           img1 {
                border: 1px solid #fff; /* Gray border */
                border-radius: 4px;  /* Rounded border */
                padding: 5px; /* Some padding */
                width: 150px; /* Set a small width */
           }

            /* Add a hover effect (blue shadow) */
            img1:hover {
               box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
            }
            .cards-wrapper {
                display: flex;
                justify-content: center;
            }
            .card img {
                max-width: 100%;
                max-height: 100%;
            }
            .card {
                margin: 0 0.5em;
                box-shadow: 2px 6px 8px 0 rgba(22, 22, 26, 0.18);
                border: none;
                border-radius: 0;
            }
            .carousel-inner {
                padding: 1em;
            }
            .carousel-control-prev,
            .carousel-control-next {
                background-color: #e1e1e1;
                width: 5vh;
                height: 5vh;
                border-radius: 50%;
                top: 50%;
                transform: translateY(-50%);
            }
            .card-text, .card-title{
                color:#000;
            }
            @media (min-width: 768px) {
                .card img {
                    height: 11em;
                }
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
            if(request.getParameter("msg")!=null)
            {
                out.println("<script>alert('Login Successful.')</script>");
            }
        %>
    <div class="header" id="myHeader" >
            <div class='banner'>
                <img src='images/logo.png' width="80" height="80" alt='logo'/>
                <h3 style="position: absolute; top: 5px;left: 80px;font-size: 24px;color:#AF3602; font-family: 'Trebuchet MS'; font-weight: bolder;">NEC College Digital Magazine</h3>
                
            </div>
            <div style="postion:absolute; float:right; margin-top: 25px; margin-right: 50px;">
                <a href="adminHome.jsp" class="btn1" style="text-decoration: none;"> Home </a>&nbsp;&nbsp;&nbsp;
                <a href="aViewArticles.jsp" class="btn1" style="text-decoration: none;"> View Articles </a>&nbsp;&nbsp;&nbsp;
                <a href="addUrl.jsp" class="btn1" style="text-decoration: none;"> Add URLs</a>
                <a href="index.jsp" class="btn1" style="text-decoration: none;"> Logout</a>
            </div>
        </div>
    <div align="center" style="margin-top: 50px; margin-left: 120px;  padding:20px; width: 80%; height:auto;background: rgba(0,0,0,0.7);">
        <img src="images/admin.jpg" width="100%" height="400"/>
    </div>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
<!-- partial -->
  <script  src="./js/script.js"></script>
  
</body>
</html>
