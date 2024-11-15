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
int bid;
String idt,rdt ;
try{
//statements causing exception
bid=Integer.parseInt(request.getParameter("ID"));
idt=request.getParameter("Idate");
rdt=request.getParameter("Rdate");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","qwerty123");

String qry="insert into returnbook values(?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,bid);
ps.setString(2,idt);
ps.setString(3,rdt);
ps.executeUpdate();
out.println("Record Inserted");
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