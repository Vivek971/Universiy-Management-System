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
int tid;
tid=Integer.parseInt(request.getParameter("Id"));
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","qwerty123");

String qry="delete from teacherreg where ID=?" ;
ps=con.prepareStatement(qry);
ps.setInt(1,tid);
rs=ps.executeQuery();
rs.next();
response.sendRedirect("admin_home.html");
}
catch(Exception ex)
{
out.println(ex);
}
%>
</body>
</html>