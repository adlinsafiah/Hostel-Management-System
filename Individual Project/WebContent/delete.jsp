<%@page import="java.sql.*"%>
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
<%

String id = request.getParameter("id");
int no = Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/servlet2", "root", "123456");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM studentregister WHERE id = '"+no+"'");
response.sendRedirect("manageAlpha.jsp");
}
catch(Exception e){}
%>