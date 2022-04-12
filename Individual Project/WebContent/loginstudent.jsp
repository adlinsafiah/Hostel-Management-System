<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
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

@import "bourbon";

.body {
	background: #eee !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
	.checkbox {
	  margin-bottom: 30px;
	}

	.checkbox {
	  font-weight: normal;
	}

	.form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 20px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
}


</style>
<header>

<div class="navbar">
  <a href="index.html">Home</a>
  <div class="dropdown">
    <button class="dropbtn"><a href="aboutus.html">About Us</a></button>
    <div class="dropdown-content">
      <a href="comittee.html">Commitee</a>
    </div>
  </div> 
	<div class="dropdown">
    <button class="dropbtn"><a href="login.html">Login</a></button>
    <div class="dropdown-content">
      <a href="loginstudent.html">Student Login</a>
	  <a href="loginadmin.html">Admin Login</a>
    </div>
  </div>
  </div>


<h2>Hostel Management System</h2>

</header>

<h1 style="text-align:center; font-family:Bebas Neue; font-size: 65px">LOG IN</h1>

<center>
<div class="wrapper">
    <form class="form-signin" action="studentpage.html" method="post">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form>
  </div>
</center>

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