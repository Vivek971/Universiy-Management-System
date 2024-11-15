<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
if(session.getAttribute("tid")==null||session.getAttribute("tid")==""){
response.sendRedirect("login.jsp");
}
else{
out.println(session.getAttribute("tid"));
%>
<%@page import="java.io.*,java.sql.*"%>
<%
int sem,qno,mrk,tmrk=0;
String crs,que;
try{
sem=Integer.parseInt(request.getParameter("Sem"));
mrk=Integer.parseInt(request.getParameter("marks"));
qno=Integer.parseInt(request.getParameter("queno"));
crs=request.getParameter("course");
que=request.getParameter("ques");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select total_marks from quespaper");
while(rs.next())
{
tmrk=rs.getInt(1);
}
tmrk=tmrk+mrk;
String qry="insert into quespaper values(?,?,?,?,?,?)" ;
PreparedStatement ps=con.prepareStatement(qry);
ps.setString(1,crs);
ps.setInt(2,sem);
ps.setInt(3,qno);
ps.setString(4,que);
ps.setInt(5,mrk);
ps.setInt(6,tmrk);
ps.executeUpdate();
out.println("Record Inserted");
response.sendRedirect("prepareqstn.jsp");
ps.close();
con.close();
}
catch(Exception ex)
{
out.println(ex);
}
%>
<%
}
%>
</body>
</html>