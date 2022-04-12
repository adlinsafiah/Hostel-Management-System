<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.sun.xml.internal.txw2.Document"%>
<html>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<html>
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

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
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
	  <a href="manageBeta.html">Kolej Beta</a>
	  <a href="manageGamma.html">Kolej Gamma</a>
    </div>
  </div>
  <a href="logout">Logout</a>
  </div>

<h2>Hostel Management System</h2>
</header>

<h1 style="text-align:center; font-family:Bebas Neue; font-size: 65px">Alpha Allotees</h1>

<%  
Class.forName("com.mysql.jdbc.Driver");

System.out.println("driver loaded");
System.out.println("Driver is loaded");
Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3305/servlet2", "root", "123456");
System.out.println("Connection created");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from  studentregister");%>


<table>
  <tr>
    <th>Student Number</th>
    <th>Name</th>
    <th>Email</th>
	<th>Address</th>
	<th>Phone Number</th>
	<th>Remark</th>
	<th>Update</th>
	<th>Delete</th>
  </tr>
     <% while (rs.next()) {%>
  <tr>
  	<td><%=rs.getString("studentNo") %></td>
  	<td><%=rs.getString("fullName") %></td>
	<td><%=rs.getString("email") %></td>
	<td><%=rs.getString("address") %></td>
	<td><%=rs.getString("phoneNo") %></td>
	<td><%=rs.getString("remarks") %></td>
    <td><a href="updateAlpha.jsp?id=<%=rs.getString("id") %>">UPDATE</a></td>
	<td><a href="delete.jsp?id=<%=rs.getString("id") %>">DELETE</a></td>
  </tr>
 <%}%>
</table>

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