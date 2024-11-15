<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style>
#field{
margin: 30px 150px;
float: right;
padding:0px;
}
ul {
list-style-type: none;
margin: 0;
padding: 0;
overflow: hidden;
background-color: black;
}
li{
float: left;
}
li a {
display: block;
color: white;
text-align: center;
padding: 5px 20px;
text-decoration: none;
}
/* Change the link color to #111 (black) on hover */
li a:hover {
background-color: blue;
}
</style>
</head>
<body background="Images/bg2.jpg">
<table bgcolor="#ffffff" width=100%>
<tr>
<td>
<table width=100% bgcolor=darkblue>
<tr>
<td bgcolor=yellow><b><font color=blue face="comic sans ms" size=+2>Welcome:<%
if(session.getAttribute("stuid")==null||session.getAttribute("stuid")==""){
response.sendRedirect("login.jsp");
}
else{
out.println(session.getAttribute("stuid"));
%></font></b></td>
<td align=center width=10% bgcolor=yellow><b><font color=white size=+2
face="comic sans ms"><a href="index.jsp">SIGNUP</font></b></a></td>
</tr>
</table></table>
<table width=100%>
<tr>
<td bgcolor="black"><b><img src="Images/logo.jpg"
height=110></img></font></b></td>
<td bgcolor="orange" width=100%><img src="banner/search.jpg" height=110
width=100%>
</img></td>
</tr>
</table>
<marquee behavior="alternate"><font color="white" size="10px">QUESTION
PAPER</font></marquee>
<ul>
<li><a href="stu_home.jsp">HOME</a></li>
<li><a href="aboutus.jsp">ABOUT US</a></li>
<li><a href="feedback.jsp">FEEDBACK</a></li>
<li><a href="help.jsp">HELP</a></li>
<li><a href="site.jsp">SITE MAP</a></li>
<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nbsp;&nbsp;&nbsp;&nbsp;&n
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
;
</li>
<li><marquee><font color="white"><b>STUDENT ZONE</b></font></marquee></li>
</ul>
<div id="field">
<font color="blue">
<table bordercolor="blue" bgcolor="orange" align="center" border="2">
<%@page import="java.io.*,java.sql.*"%>
<%! Connection con ; Statement ps ; ResultSet rs ;
%>
<%
try{
String crs;
int sem;
crs=request.getParameter("txtcrs");
sem=Integer.parseInt(request.getParameter("txtsem"));
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="select * from quespaper where course='"+crs+"'and
semester='"+sem+"' ";
ps=con.createStatement();
rs=ps.executeQuery(qry);
// rs.next();
}
catch(Exception ex)
{
out.println(ex);
}
%>
<% while(rs.next())
{
%>
<br>
<tr><td height="30" width="50">Q No: <%=rs.getInt("quesno")%></td>
<td height="30" width="300">Question:
<%=rs.getString("question")%></td>
<td>MARKS: <%=rs.getInt("marks")%></td> </tr>
<% }
ps.close();
con.close();%>
</table> </font> </div>
<div><img src="Images/qst.jpg" height="300" width="500"></div>
<% }
%>
</body>
</html>
