<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Narayana Engineering College</title>

<style>
/* ------------------ GLOBAL ------------------ */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: "Poppins", sans-serif;
}

body{
    background:url('images/college.jpg');
    background-size:cover;
    color:#333;
}

/* ------------------ NAVBAR ------------------ */
.navbar{
    width:100%;
    padding:20px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    position:fixed;
    top:0;
    left:0;
    background:rgba(255,255,255,0.9);
    backdrop-filter:blur(8px);
    box-shadow:0 2px 10px rgba(0,0,0,0.1);
    z-index:10;
}

.navbar img{
    width:70px;
    height:70px;
    object-fit:contain;
}

.navbar h1{
    font-size:26px;
    font-weight:600;
    display:flex;
    align-items:center;
    gap:10px;
    color:#003566;
}

.navbar button{
    background:#00b4d8;
    padding:10px 18px;
    border:none;
    color:white;
    font-weight:600;
    border-radius:8px;
    cursor:pointer;
    transition:0.3s;
}

.navbar button:hover{
    background:#0096c7;
}

/* ------------------ HERO SECTION ------------------ */
/* ------------------ HERO SECTION ------------------ */
.hero{
    height:100vh; /* Full viewport height */
    width: 100%;
    background:url('images/bg.webp') no-repeat center center/cover;
    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    position:relative;
    margin:0;
    padding:0;
}

.hero::after{
    content:'';
    position:absolute;
    top:0; left:0;
    width:100%; height:100%;
    background:rgba(0,0,0,0.55); /* overlay for readability */
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:800px;
}


.hero-content h1{
    font-size:48px;
    color:white;
    text-shadow:0 0 15px #00eaff;
}

.hero-content p{
    margin:20px 0;
    font-size:20px;
    color:#eee;
}

.hero-content button{
    background:#00eaff;
    border:none;
    padding:14px 28px;
    font-size:17px;
    color:black;
    border-radius:8px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.hero-content button:hover{
    background:white;
    transform:scale(1.05);
}

/* ------------------ LOGIN POPUP ------------------ */
.popup{
    position:fixed;
    top:0; left:0;
    width:100%; height:100%;
    background:rgba(0,0,0,0.7);
    display:none;
    justify-content:center;
    align-items:center;
    z-index:100;
}

.popup-content{
    width:90%;
    max-width:450px;
    background:white;
    padding:30px;
    border-radius:15px;
    position:relative;
    box-shadow:0 0 20px rgba(0,0,0,0.3);
}

.close-btn{
    position:absolute;
    right:15px;
    top:10px;
    font-size:22px;
    cursor:pointer;
}

/* Tabs */
.tabs{
    display:flex;
    justify-content:space-around;
    margin-bottom:20px;
    border-bottom:1px solid #ccc;
}

.tabs button{
    background:none;
    border:none;
    color:#333;
    padding:10px 15px;
    cursor:pointer;
    opacity:0.6;
    border-bottom:3px solid transparent;
    transition:0.3s;
    font-weight:600;
}

.tabs button.active{
    opacity:1;
    border-bottom:3px solid #00b4d8;
}

.form-box{
    display:none;
}

form{
    display:flex;
    flex-direction:column;
    gap:15px;
}

input, select{
    padding:12px;
    border-radius:8px;
    border:1px solid #ccc;
    outline:none;
    font-size:15px;
}

button.submit{
    padding:12px;
    background:#00b4d8;
    border:none;
    color:white;
    font-weight:bold;
    border-radius:10px;
    cursor:pointer;
    transition:0.3s;
}

button.submit:hover{
    background:#0096c7;
}
.marquee {
  margin: 0 auto;
  white-space: nowrap;
  overflow: hidden;
  position: absolute;
}

.marquee span {
  display: inline-block;
  padding-left: 100%;
  animation: marquee 5s linear infinite;
}

.marquee2 span {
  animation-delay: 2.5s;
}

@keyframes marquee {
  0% {
    transform: translate(0, 0);
  }
  100% {
    transform: translate(-100%, 0);
  }
}
</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <h1><img src="images/logo.png"> Narayana Engineering College</h1>
<!--    <button onclick="openPopup()">Login / Register</button>-->
</div>

<!-- HERO SECTION -->
<div class="hero">
    <div class="hero-content">
        <h1>NEC Digital College Magzine</h1>
        <p class="marquee"><span>NEC Digital Magazine - Empowering Student Creativity & Innovation.</span></p>
        <br>
        <br>
        <br>
        <br>
        <button onclick="openPopup()">Get Started -></button>
    </div>
</div>

<!-- POPUP LOGIN SYSTEM -->
<div class="popup" id="popup">

    <div class="popup-content">
        <span class="close-btn" onclick="closePopup()">✖</span>

        <!-- TABS -->
        <div class="tabs">
            <button class="active" onclick="showForm('student')">Student</button>
            <button onclick="showForm('staff')">Staff</button>
            <button onclick="showForm('admin')">Admin</button>
            <button onclick="showForm('register')">Register</button>
        </div>

        <!-- STUDENT LOGIN -->
        <div class="form-box" id="student" style="display:block;">
            <h2>Student Login</h2>
            <form>
                <input type="text" placeholder="Student ID / Email" required>
                <input type="password" placeholder="Password" required>
                <button class="submit">Login</button>
            </form>
        </div>

        <!-- STAFF LOGIN -->
        <div class="form-box" id="staff">
            <h2>Staff Login</h2>
            <form>
                <input type="email" placeholder="Staff Email" required>
                <input type="password" placeholder="Password" required>
                <button class="submit">Login</button>
            </form>
        </div>

        <!-- ADMIN LOGIN -->
        <div class="form-box" id="admin">
            <h2>Admin Login</h2>
            <form>
                <input type="text" placeholder="Admin Username" required>
                <input type="password" placeholder="Admin Key" required>
                <button class="submit" style="background:#d00000;">Access Panel</button>
            </form>
        </div>

        <!-- STUDENT REGISTER -->
        <div class="form-box" id="register">
            <h2>Student Registration</h2>
            <form>
                <input type="text" placeholder="Full Name" required>
                <input type="email" placeholder="Email" required>
                <input type="text" placeholder="Phone Number" required>

                <select required>
                    <option>Select Department</option>
                    <option>CSE</option>
                    <option>ECE</option>
                    <option>EEE</option>
                    <option>MECH</option>
                    <option>CIVIL</option>
                    <option>PG</option>
                </select>

                <select required>
                    <option>Select Year</option>
                    <option>1st</option>
                    <option>2nd</option>
                    <option>3rd</option>
                    <option>4th</option>
                </select>

                <button class="submit">Register</button>
            </form>
        </div>

    </div>

</div>

<script>
function openPopup(){
    //document.getElementById("popup").style.display = "flex";
    window.location.href = "index1.jsp";
}
function closePopup(){
    document.getElementById("popup").style.display = "none";
}

function showForm(id){
    document.querySelectorAll(".form-box").forEach(f => f.style.display = "none");
    document.getElementById(id).style.display = "block";

    document.querySelectorAll(".tabs button").forEach(btn => btn.classList.remove("active"));
    event.target.classList.add("active");
}
</script>

</body>
</html>