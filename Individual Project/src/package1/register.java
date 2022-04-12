package package1;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "R3" , urlPatterns= { "/register"})

public class register extends HttpServlet {
private static final long serialVersionUID = 1L; 
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

response.setContentType("text/html");
PrintWriter out = response.getWriter();

String id = request.getParameter("id");
String name = request.getParameter("fullName");
String studnum = request.getParameter("studNum");
String address = request.getParameter("address");
String email = request.getParameter("email");
String phonenum = request.getParameter("phoneNo");
String remark = request.getParameter("remarks");
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3305/servlet2", "root", "123456");

PreparedStatement ps = ((java.sql.Connection) con).prepareStatement("insert into studentregister values(?,?,?,?,?,?,?)");

ps.setString(1,id);
ps.setString(2,name);
ps.setString(3, studnum);
ps.setString(4, address);
ps.setString(5, email);
ps.setString(6, phonenum);
ps.setString(7, remark);
int i = ps.executeUpdate();

if (i > 0)
	
	response.setContentType("text/html");
	PrintWriter pw1=response.getWriter();
	pw1.println("<script type=\"text/javascript\">");
	pw1.println("alert('You have successfully registered!');");
	pw1.println("location='confirmation.jsp';");
	pw1.println("</script>");
	
	HttpSession session = request.getSession();
    session.setAttribute("fullName", name);
    session.setAttribute("studNum", studnum);
    session.setAttribute("email", email);
 
} catch (Exception e2) {
System.out.println(e2);
}
out.close();
}
}