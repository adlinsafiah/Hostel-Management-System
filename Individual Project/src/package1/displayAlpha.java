package package1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "R2", urlPattern = {"/DisplayServlet"})
public class display extends HttpServlet  
{    
	 private static final long serialVersionUID = 1L;
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
      {  
    	 response.setContentType("text/html");  
         PrintWriter out = response.getWriter();  
         out.println("<html><body>");  
         try 
         {  
             Class.forName("com.mysql.jdbc.Driver");  
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/servlet2", "root", "123456");    
             Statement stmt = con.createStatement();  
             ResultSet rs = stmt.executeQuery("select * from employee");  
             out.println("<table border=1 width=50% height=50%>");  
             out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");  
             while (rs.next()) 
             {  
                 String n = rs.getString("empid");  
                 String nm = rs.getString("empname");  
                 int s = rs.getInt("sal");   
                 out.println("<tr><td>" + n + "</td><td>" + nm + "</td><td>" + s + "</td></tr>");   
             }  
             out.println("</table>");  
             out.println("</html></body>");  
             con.close();  
            }  
             catch (Exception e) 
            {  
             out.println("error");  
         }  
     }  
 }  