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

public class StudentRegServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    	System.out.println(request);
        String myemail = request.getParameter("Email");
        String myname = request.getParameter("Name");
        String city = request.getParameter("City");
        String address = request.getParameter("Address");
        String myphone = request.getParameter("Phone");
        String mypass = request.getParameter("Password");
        String occupation = request.getParameter("Occupation");
        String course = request.getParameter("Course");
        String pic = request.getParameter("Pic");
        String dob = request.getParameter("Dob");
        String fathersname = request.getParameter("Fathers_name");
        String message = "Registration Successful"; 
        
        System.out.println(myemail);// Default success message
        System.out.println(myname);
        System.out.println(myphone);
        System.out.println(mypass);
        System.out.println(message);
        
        
        // Validate input to ensure no fields are empty
        if (myemail == null || mypass == null || 
            myemail.isEmpty() ||  mypass.isEmpty()) {
            message = "Email & Password fields are required!";
        } else {
            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "qwerty123");

                // SQL query for inserting admin data
                String qry = "INSERT INTO Student (Email, Name,City,Address, Phone, Password, Occupation, Course, Pic, Dob,Fathers_name ) VALUES (?, ?, ?, ?,?, ?, ?, ?,?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setString(1, myemail);
                ps.setString(2, myname);
                ps.setString(3, city);
                ps.setString(4, address);
                ps.setString(5, myphone);
                ps.setString(6, mypass);
                ps.setString(7, occupation);
                ps.setString(8, course);
                ps.setString(9, pic);
                ps.setString(10, dob);
                ps.setString(11, fathersname);
                
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
        response.sendRedirect(request.getContextPath() + "/pages/student/Stu_adm.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
    }
}
