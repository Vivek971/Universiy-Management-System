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
int sid;
String snm,resm ;
try{
sid=Integer.parseInt(request.getParameter("Id"));
snm=request.getParameter("Name");
resm=request.getParameter("resume");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="insert into resume values(?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,sid);
ps.setString(2,resm);
ps.setString(3,snm);
ps.executeUpdate();
out.println("Record Inserted");
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