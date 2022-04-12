<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.sun.xml.internal.txw2.Document"%><html>
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
String fullname = request.getParameter("fullName");
String studentNo = request.getParameter("studentNo");
String address = request.getParameter("address");
String email = request.getParameter("email");
String phoneNo = request.getParameter("phoneNo");
String remarks = request.getParameter("remarks");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/servlet2", "root", "123456");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("update studentregister set fullName ='"+fullname+"',studentNo='"+studentNo+"',address="+address+",email='"+email+"', phoneNo='"+phoneNo+"', remarks='"+remarks+"' where id="+id);
	response.setContentType("text/html");
	PrintWriter pw1=response.getWriter();
	pw1.println("<script type=\"text/javascript\">");
	pw1.println("alert('Sucessfully Updated');");
	pw1.println("</script>");
RequestDispatcher rd=request.getRequestDispatcher("manageAlpha.jsp");
rd.include(request, response);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>