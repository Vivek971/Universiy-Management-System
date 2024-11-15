<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%@page import="java.io.*,java.sql.*"%>
<%! Connection con ; PreparedStatement ps ; ResultSet rs ;
%>
<%
try{
//statements causing exception
String snm;
snm=request.getParameter("Name");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","qwerty123");

String qry="delete from student where name='"+snm+"'" ;
ps=con.prepareStatement(qry);
ps.setString(1,snm);
rs=ps.executeQuery();
rs.next();
out.println("record deleted");
response.sendRedirect("admin_home.html");
}
catch(Exception ex)
{
out.println(ex);
}
%>
</body> </html>