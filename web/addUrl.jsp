<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign Up Signin Form Template Example</title>
  
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
            .article{
                width:500px;
                height: auto;
                padding: 15px;
                margin-top: 50px;
                margin-left: auto;
                margin-right: auto;
                border: none;
                outline: none;
                background: #000;
                box-shadow: 1px 2px 2px 3px #5E6F6E;
                border-radius: 20px;
            }
            .article td, th{
                padding: 10px;
                color: #555;
            }
            tr
            {
                text-align: center;
            }
            label{
                font-family: sans-serif;
            }
            select{
                width: 300px;
                padding: 10px;
                background: transparent;
                outline: none;
                //border: none;
                border: 1px #F7CA18 solid;
                
            }
            input[type=text]
            {
                width:300px;
                padding: 10px;
                background: transparent;
                outline: none;
                //border: none;
                border: 1px #F7CA18 solid;
            }
            input[type=file]
            {
                width:300px;
                padding: 10px;
                margin-left: 10px;
                background: transparent;
                outline: none;
                //border: none;
                border: 1px #F7CA18 solid;
            }
            input[type=date]
            {
                width:300px;
                padding: 10px;
                margin-left: 10px;
                background: transparent;
                outline: none;
                //border: none;
                border: 1px #F7CA18 solid;
            }
            input[type=radio]
            {
                width: 50px;
                padding: 10px;
                font-size: 32px;
                color: #F7CA18;
            }
            textarea{
                width: 300px;
                background: transparent;
                 border: 1px #F7CA18 solid;
            }
            input[type=submit], [type=reset]
            {
                width: 150px;
                height: auto;
                padding: 10px;
                border:1px #F7CA18 solid;
                outline: none;
                border-radius: 20px;
                background: transparent;
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
                out.println("<script>alert('URL Data Added Successfully.')</script>");
            }
            if(request.getParameter("msg1")!=null)
            {
                out.println("<script>alert('URL data is not Added.')</script>");
            }
        %>
    <div class="header" id="myHeader" >
            <div class='banner'>
                <img src='images/logo.png' width="80" height="80" alt='logo'/>
                <h3 style="position: absolute; top: 5px;left: 80px;font-size: 24px;color:#AF3602; font-family: 'Trebuchet MS'; font-weight: bolder;">NEC Digital College Magazine</h3>
                
            </div>
            <div style="postion:absolute; float:right; margin-top: 25px; margin-right: 50px;">
                <a href="adminHome.jsp" class="btn1" style="text-decoration: none;"> Home </a>&nbsp;&nbsp;&nbsp;
                <a href="aViewArticles.jsp" class="btn1" style="text-decoration: none;"> View Articles </a>&nbsp;&nbsp;&nbsp;
                <a href="addUrl.jsp" class="btn1" style="text-decoration: none;"> Add URLs</a>
                <a href="index.jsp" class="btn1" style="text-decoration: none;"> Logout</a>
            </div>
        </div>
        <div align="center" style="width: 100%;height: 700px;border:3px #fff solid;background:rgba(0,0,0, 0.7); text-align: center;color:#fff;">
            <form name="f" action="insertUrl.jsp" method="Post" onSubmit="">
            <table class="article">
                <tr align="center">
                    <td colspan="3" ><span style="border-bottom: 3px #93FF00 double;text-align: center;font-family: cursive;font-size: 28px;color:#fff;">Add URL Data</span></td>
                </tr>
                <tr>
                    <td style="color:#93FF00;"><label>URL Title</label></td>
                    <td><input type="text" name="uname" placeholder="Enter URL Name" style="color:#fff;" required/></td>
                </tr>
                <tr>
                    <td style="color:#93FF00;"><label>URL</label></td>
                    <td><input type="text" name="url" placeholder="Enter URL Link" style="color:#fff;" required/></td>
                </tr>
                <tr>
                    <td style="color:#93FF00;"><label>Last Date</label></td>
                    <td><input type="Date" name="ldate" placeholder="" style="color:#fff;" required/></td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input type="submit" name="submit" value="Add" style="color:#93FF00;"/>
                        <input type="reset" name="reset" value="Clear" onClick="reset()" style="color:#93FF00;"/>
                    </td>
                </tr>
            </table>
            </form>
        </div>
  
</body>
</html>
