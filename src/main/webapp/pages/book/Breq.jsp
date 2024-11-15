<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%@page import="java.io.*,java.sql.*"%>
<%! int bid ; %>
<%
try{
//statements causing exception
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","qwerty123");
String qry1="select max(BOOKID) from bookrequest";

PreparedStatement ps1=con.prepareStatement(qry1);
ResultSet rs=ps1.executeQuery();
if(rs.next())
{
bid=rs.getInt(1);
bid++;
}
}
catch(Exception ex){
out.println(ex);
}
%>
<%
String bnm,athr,pub,cpy ;
try{
//statements causing exception
bnm=request.getParameter("Name");
athr=request.getParameter("Author");
pub=request.getParameter("Publisher");
cpy=request.getParameter("Copies");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="insert into BOOKREQUEST values(?,?,?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setInt(1,bid);
ps.setString(2,bnm);
ps.setString(3,athr);
ps.setString(4,pub);
ps.setString(5,cpy);
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
