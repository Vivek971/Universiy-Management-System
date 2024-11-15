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
%>
<%@page import="java.io.*,java.sql.*"%>
<%
int bid,sid;
String bnm,idt ;
try{
//statements causing exception
sid=Integer.parseInt(request.getParameter("SID"));
bid=Integer.parseInt(request.getParameter("BID"));
bnm=request.getParameter("Name");
idt=request.getParameter("Idate");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","qwerty123");

String qry="insert into BOOKISSUE values(?,?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,sid);
ps.setInt(2,bid);
ps.setString(3,bnm);
ps.setString(4,idt);
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
</body>
</html>