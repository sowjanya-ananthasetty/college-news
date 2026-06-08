<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign Up Signin Form Template Example</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style>
  body, html{
                margin:0;
                padding: 0;
                height: 100%;
                background:url('images/bg.jpg') repeat-y;
                background-size: cover;
                font-family: 'Trebuchet MS', sans-serif;
                color:#fff;
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
                
            }
            .txt{
                color: #93FF00;
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
                color:#FFF;
                
                //border: none;
                border: 1px #F7CA18 solid;
                
            }
            option{
                background: transparent;
            }
            input[type=text]
            {
                width:300px;
                padding: 10px;
                background: transparent;
                outline: none;
                color:#FFF;
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
                color: #fff;
                //border: none;
                border: 1px #F7CA18 solid;
            }
           
            textarea{
                width: 300px;
                background: transparent;
                 border: 1px #F7CA18 solid;
                 color:#FFF;
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
<script language="JavaScript">
   
    </script>
</head>
<body>


<body>
     <%
         String email = session.getAttribute("email").toString();
         session.setAttribute("email", email);
            if(request.getParameter("msg")!=null)
            {
                out.println("<script>alert('Article Added Successfully.')</script>");
            }
            if(request.getParameter("msg1")!=null)
            {
                out.println("<script>alert('Article Not Added.')</script>");
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
        <div align="center" style="width: 100%;height: 700px;border:3px #fff solid;background:rgba(0,0,0, 0.7); text-align: center;">
            <form name="f" method="POST" action="insertarticle.jsp" enctype="multipart/form-data" onsubmit="">
            <table class="article">
                <tr align="center">
                    <td colspan="3" ><span style="border-bottom: 3px #93FF00 double;text-align: center;font-family: cursive;font-size: 28px; color:#fff;">Article Details</span></td>
                </tr>
                <tr>
                    <td class="txt"><label>Article Name</label></td>
                    <td><input type="text" name="aname" placeholder="Enter Article Name" style="color:#fff;" required/></td>
                </tr>
                <tr>
                    <td class="txt"><label>Department</label></td>
                    <td style="color:#fff;"><select name="dept" required>
                            <option value="" style="color:#000;">--Select Department--</option>
                            <option value="ALL" style="color:#000;">ALL</option>
                            <option value="CSE" style="color:#000;">CSE</option>
                            <option value="ECE" style="color:#000;">ECE</option>
                            <option value="MECH" style="color:#000;">MECH</option>
                            <option value="EEE" style="color:#000;">EEE</option>
                            <option value="CIVIL" style="color:#000;">CIVIL</option>
                            <option value="PG" style="color:#000;">PG</option>
                        </select></td>
                </tr>
                <tr>
                    <td class="txt"><label>Category</label></td>
                    <td style="color:#fff;"><select name="cat" required>
                            <option value="" style="color:#000;">--Select Category--</option>
                            <option value="Education" style="color:#000;">Education</option>
                            <option value="Entertainment" style="color:#000;">Entertainment</option>
                        </select></td>
                </tr>
                <tr>
                    <td class="txt"><label>Template Type</label></td>
                    <td style="color:#fff;">
                        <select name="ttype" required>
                            <option value="" style="color:#000;">--Select Template--</option>
                            <option value="1" style="color:#000;">1(left Image)</option>
                            <option value="2" style="color:#000;">2(Right Image)</option>
                            <option value="3" style="color:#000;">3(Center Image)</option>
                        </select>
                        
                    </td>
                </tr>
                <tr>
                    <td class="txt"><label>Description</label></td>
                    <td><textarea name="desc" rows="5" cols="10" placeholder="Add story in 200 characters" style="color:#fff;" required></textarea></td>
                </tr>
                <tr align="center">
                    <td class="txt"><label>Add Image</label></td>
                    <td><input type="file" name="img1" placeholder="select image" required/></td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input type="submit" name="submit" value="Post" style="color:#93FF00;"/>
                        <input type="reset" name="reset" value="Clear" onClick="reset()" style="color:#93FF00;"/>
                    </td>
                </tr>
            </table>
            </form>
        </div>
  
</body>
</html>
