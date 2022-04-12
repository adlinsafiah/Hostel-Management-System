package package1; 
    import java.io.IOException;
    import java.io.PrintWriter;
    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.SQLException;
    import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
    import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

    @WebServlet (name="R1", urlPatterns= { "/student"})
    public class student extends HttpServlet {
        private static final long serialVersionUID = 1L;

        public student() {
            super();
        }
        protected void doGet(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {

        }

        protected void doPost(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {

            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            String sql = "select * from student where username='" + username+ "'";
            Connection conn = null;

            try {
                conn = DriverManager.getConnection(
                		"jdbc:mysql://localhost:3305/servlet2", "root", "123456");

                Statement s = conn.createStatement();

                java.sql.ResultSet rs = s.executeQuery(sql);
                String un = null;
                String pw = null;
            

            /* Need to put some condition in case the above query does not return any row, else code will throw Null Pointer exception */   
        
            if(!rs.isBeforeFirst()){
            	
            	response.setContentType("text/html");
            	PrintWriter pw2=response.getWriter();
            	pw2.println("<script type=\"text/javascript\">");
            	pw2.println("alert('No such user in the database');");
            	pw2.println("</script>");
            	RequestDispatcher rd=request.getRequestDispatcher("loginstudent.jsp");
            	rd.include(request, response);
            } 
            
            else {

/* Conditions to be executed after at least one row is returned by query execution */ 
                while (rs.next()) {
                    un = rs.getString("username");
                    pw = rs.getString("password");
           
                     
                }


                if (un.equals(username) && pw.equals(password)) {
                  // use this or create request dispatcher          
                    response.sendRedirect("studentpage.html");  
                

                	HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    
            
                } 
                
                else {
                	
                	response.setContentType("text/html");
                	PrintWriter pw1=response.getWriter();
                	pw1.println("<script type=\"text/javascript\">");
                	pw1.println("alert('Invalid Matric number  or Password');");
                	pw1.println("</script>");
                	RequestDispatcher rd=request.getRequestDispatcher("studentpage.html");
                	rd.include(request, response);
                }
              }

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

    }