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
int tid;
String fnm, nt ;
try{
//statements causing exception
tid=Integer.parseInt(request.getParameter("ID"));
fnm=request.getParameter("Name");
nt=request.getParameter("Notes");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="insert into notes values(?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,tid);
ps.setString(2,fnm);
ps.setString(3,nt);
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