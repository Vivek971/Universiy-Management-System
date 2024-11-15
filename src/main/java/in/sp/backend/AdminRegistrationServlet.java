package in.sp.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminRegistrationServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    	System.out.println(request);
        String myemail = request.getParameter("Email");
        String myname = request.getParameter("Name");
        String myphone = request.getParameter("Phone");
        String mypass = request.getParameter("Password");
        String message = "Registration Successful"; 
        
        System.out.println(myemail);// Default success message
        System.out.println(myname);
        System.out.println(myphone);
        System.out.println(mypass);
        System.out.println(message);
        
        
        // Validate input to ensure no fields are empty
        if (myemail == null || myname == null || myphone == null || mypass == null || 
            myemail.isEmpty() || myname.isEmpty() || myphone.isEmpty() || mypass.isEmpty()) {
            message = "All fields are required!";
        } else {
            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "qwerty123");

                // SQL query for inserting admin data
                String qry = "INSERT INTO Admin (Email, Name, Contact, Password) VALUES (?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setString(1, myemail);
                ps.setString(2, myname);
                ps.setString(3, myphone);
                ps.setString(4, mypass);
                
                int result = ps.executeUpdate();
                
                if (result == 0) {
                    message = "Registration Failed: No rows affected";
                }

                ps.close();
                con.close();
            } catch (ClassNotFoundException | SQLException ex) {
                message = "Registration Failed: " + ex.getMessage();
            }
        }
        
        // Redirect back to the registration page with a message
        response.sendRedirect(request.getContextPath() + "/pages/admin/admin_reg.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
    }
}
