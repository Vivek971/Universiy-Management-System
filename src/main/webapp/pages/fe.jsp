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
int adno,amnt,sem;
String snm,seml,crs,ses,des,mod ;
try{
//statements causing exception
adno=Integer.parseInt(request.getParameter("ADM_NO"));
amnt=Integer.parseInt(request.getParameter("Amount"));
snm=request.getParameter("Name");
seml=request.getParameter("Email");
crs=request.getParameter("course");
sem=Integer.parseInt(request.getParameter("sem"));
ses=request.getParameter("sesion");
des=request.getParameter("description");
mod=request.getParameter("mode_pay");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="insert into Fee values(?,?,?,?,?,?,?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,adno);
ps.setString(2,snm);
ps.setString(3,seml);
ps.setString(4,crs);
ps.setInt(5,sem);
ps.setString(6,ses);
ps.setInt(7,amnt);
ps.setString(8,des);
ps.setString(9,mod);
ps.executeUpdate();
out.println("Record Inserted");
response.sendRedirect("payment.html");
ps.close();
con.close();
}
catch(Exception ex)
{
out.println(ex);
}
%>
<% }
%>
</body>
</html>