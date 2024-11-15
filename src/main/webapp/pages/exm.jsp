<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
if(session.getAttribute("stuid")==null||session.getAttribute("stuid")==""){
response.sendRedirect("login.jsp");
}
else{
out.println(session.getAttribute("stuid"));
%> <%@page import="java.io.*,java.sql.*"%>
<%
int sid,sem;
String snm,sub;
try{
//statements causing exception
sid=Integer.parseInt(request.getParameter("ID"));
sem=Integer.parseInt(request.getParameter("Sem"));
snm=request.getParameter("Name");
sub=request.getParameter("course");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="insert into exam values(?,?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,sid);
ps.setString(2,snm);
ps.setString(3,sub);
ps.setInt(4,sem);
ps.executeUpdate();
out.println("Record Inserted");
response.sendRedirect("stu_home.jsp");
ps.close();
con.close();
}
catch(Exception ex)
{
out.println(ex);
}
%>
<% } %>
</body> </html>