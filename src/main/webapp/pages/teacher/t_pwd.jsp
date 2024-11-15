<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%@page import="java.io.*,java.sql.*"%>
<%
String new1;
try{
//statements causing exception
new1=request.getParameter("newp");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","qwerty123");

String qry="update teacherreg set password=? where id=?" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setString(1,new1);
String id=session.getAttribute("tid").toString();
ps.setString(2,id);
ps.executeUpdate();
out.println("Password Updated");
response.sendRedirect("teach_home.html");
ps.close();
con.close();
}
catch(Exception ex)
{
out.println(ex);
}
%>
</body>
</html>