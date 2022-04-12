<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hostel Management System</title>
</head>
<body>
<style>

   header {
  background-color: #aec6cf;
  font-family: 'Bebas Neue';
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}


.icon-bar {
  width: 50%;
  background-color: #aec6cf;
  overflow: auto;
  text-align: center;
}

.icon-bar a {
  float: left;
  width: 16%;
  padding: 12px 0;
  border-radius:180px;
  transition: all 0.3s ease;
  color: black;
  font-size: 26px;
}

.icon-bar a:hover {
  background-color: white;
}


.navbar {
  overflow: hidden;
  background-color: #aec6cf;
}

.navbar a {
  float: left;
  font-size: 16px;
  font-family: Century Gothic;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  font-family: Century Gothic;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px; 
  font-family: Century Gothic; 
  border: none;
  outline: none;
  color: black;
  padding: 1px 8px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: white;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #aec6cf;
}

.dropdown:hover .dropdown-content {
  display: block;
}

footer {
  background-color: #aec6cf;
  padding: 10px;
  text-align: left;
  color: black;
}

body {
  font-family: Arial;
  margin: 0;
}

.form-style-1 {
	margin:10px auto;
	max-width: 400px;
	padding: 20px 12px 10px 20px;
	font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-1 li {
	padding: 0;
	display: block;
	list-style: none;
	margin: 10px 0 0 0;
}
.form-style-1 label{
	margin:0 0 3px 0;
	padding:0px;
	display:block;
	font-weight: bold;
}
.form-style-1 input[type=text], 
.form-style-1 input[type=date],
.form-style-1 input[type=datetime],
.form-style-1 input[type=number],
.form-style-1 input[type=search],
.form-style-1 input[type=time],
.form-style-1 input[type=url],
.form-style-1 input[type=email],
textarea, 
select{
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	border:1px solid #BEBEBE;
	padding: 7px;
	margin:0px;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;
	outline: none;	
}
.form-style-1 input[type=text]:focus, 
.form-style-1 input[type=date]:focus,
.form-style-1 input[type=datetime]:focus,
.form-style-1 input[type=number]:focus,
.form-style-1 input[type=search]:focus,
.form-style-1 input[type=time]:focus,
.form-style-1 input[type=url]:focus,
.form-style-1 input[type=email]:focus,
.form-style-1 textarea:focus, 
.form-style-1 select:focus{
	-moz-box-shadow: 0 0 8px #88D5E9;
	-webkit-box-shadow: 0 0 8px #88D5E9;
	box-shadow: 0 0 8px #88D5E9;
	border: 1px solid #88D5E9;
}
.form-style-1 .field-divided{
	width: 49%;
}

.form-style-1 .field-long{
	width: 100%;
}
.form-style-1 .field-select{
	width: 100%;
}
.form-style-1 .field-textarea{
	height: 100px;
}
.form-style-1 input[type=submit], .form-style-1 input[type=button]{
	background: #4B99AD;
	padding: 8px 15px 8px 15px;
	border: none;
	color: #fff;
}
.form-style-1 input[type=submit]:hover, .form-style-1 input[type=button]:hover{
	background: #4691A4;
	box-shadow:none;
	-moz-box-shadow:none;
	-webkit-box-shadow:none;
}
.form-style-1 .required{
	color:red;
}
</style>
<header>

<div class="navbar">
  <a href="index2.html">Home</a>
  <div class="dropdown">
    <button class="dropbtn"><a href="aboutus.html">About Us</a></button>
    <div class="dropdown-content">
      <a href="comittee.html">Committee</a>
    </div>
  </div> 
	<div class="dropdown">
    <button class="dropbtn"><a href="register.html">Manage</a></button>
    <div class="dropdown-content">
      <a href="manageAlpha.jsp">Kolej Alpha</a>
	  <a href="registerBeta.html">Kolej Beta</a>
	  <a href="registerGamma.html">Kolej Gamma</a>
    </div>
  </div>
    <a href="logout">Logout</a>
  </div>


<h2>Hostel Management System</h2>

<h1 style="text-align:center; font-family:Bebas Neue; font-size: 65px">UPDATE KOLEJ ALPHA</h1>

</header>

<form action="update.jsp" method="post">
<ul class="form-style-1">
    <li><p align =center><input type="hidden" name="id" value="1"></td></p><li>
    <li><label>Full Name <span class="required">*</span></label><input type="text" name="fullName" class="field-long" value="Nik Alya Hanina Binti Nik Hussein"></li>
    <li>
        <label>Student Number<span class="required">*</span></label>
        <input type="text" name="studNum" class="field-long" value="2020987765">
    </li>
	<li>
        <label>Address<span class="required">*</span></span></label>
        <input type="text" name="address" class="field-long" value="Bangi">
    </li>
	<li>
        <label>Email<span class="required">*</span></label>
        <input type="text" name="email" class="field-long" value="nikalya@gmail.com">
    </li>
	<li>
        <label>Phone Number<span class="required">*</span></label>
        <input type="text" name="phoneNo" class="field-long" value="0123456789">
    </li>
	<li>
        <label>Remarks</label>
        <input type="text" name="remarks" class="field-long" value="I hope i can stay in kolej to save up money">
    <li>
        <label>Status</label>
        <input type="text" name="status" class="field-long">
    <li>
        <input type="submit" name="Submit" value="Update">
    </li>
</ul>
</form>

<footer>
      <div class="container">
        <h4> Our Address</h4>
        <h4><ul>Universiti Teknologi Mara Cawangan Perak<br> Kampus Tapah<br>3400 Tapah Road<br>Perak, Malaysia</ul>
        </h4>
        <h4> Operating Hours</h4>
        <h4><ul> Mon - Fri at 10 a.m. to 6 p.m</ul></h4>
        </div>
      <div class="icon-bar">
  <a href="#"><i class="fa fa-envelope"></i></a> 
  <a href="#"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-whatsapp"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-instagram"></i></a>
  <a href="#"><i class="fa fa-youtube"></i></a></div>
<div>
<br><center>
<p>&copy; 2020 UiTM Tapah<p></center></div></footer>
</body>
</html>