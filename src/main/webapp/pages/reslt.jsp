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
int sid,mrk,max,sem;
String snm,crs;
try{
sid=Integer.parseInt(request.getParameter("ID"));
snm=request.getParameter("Name");
crs=request.getParameter("course");
mrk=Integer.parseInt(request.getParameter("marks"));
max=Integer.parseInt(request.getParameter("Max"));
sem=Integer.parseInt(request.getParameter("sem"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="insert into RESULT values(?,?,?,?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,sid);
ps.setString(2,snm);
ps.setString(3,crs);
ps.setInt(4,mrk);
ps.setInt(5,max);
ps.setInt(6,sem);
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
