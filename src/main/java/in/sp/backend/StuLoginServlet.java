package in.sp.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class StuLoginServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String myemail = request.getParameter("Email");
        String mypass = request.getParameter("Password");
        String message = "Login Failed"; // Default message
        
        // Validate input to ensure no fields are empty
        if (myemail == null || mypass == null || 
            myemail.isEmpty() || mypass.isEmpty()) {
            message = "All fields are required!";
        } else {
            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "qwerty123");

                // SQL query to check if student exists with the given email and password
                String qry = "SELECT * FROM Admin WHERE Email = ? AND Password = ?";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setString(1, myemail);
                ps.setString(2, mypass);
                
                ResultSet rs = ps.executeQuery();
                
                if (rs.next()) {
                    // If user found, set session attributes and redirect to dashboard
                    HttpSession session = request.getSession();
                    session.setAttribute("userID", rs.getString("ID")); // Assuming 'ID' is the column for user ID
                    session.setAttribute("userEmail", myemail); // Store email in session if needed
                    
                    response.sendRedirect(request.getContextPath() + "/dashboard.jsp");
                    return;
                } else {
                    message = "Invalid email or password!";
                }

                rs.close();
                ps.close();
                con.close();
            } catch (ClassNotFoundException | SQLException ex) {
                message = "Login Failed: " + ex.getMessage();
            }
        }
        
        // Redirect back to login page with the message
        response.sendRedirect(request.getContextPath() + "/login.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
    }
}
