<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style>
#field{
float: right;
margin: 30px 150px;
width: 400px;
}
ul {
list-style-type: none;
margin: 0;
padding: 0;
overflow: hidden;
background-color: black;
}
li {
float: left;
}
li a {
display: block;
color: white;
text-align: center;
padding: 10px 28px;
text-decoration: none;
}
/* Change the link color to #111 (black) on hover */
li a:hover {
background-color: blue;
}</style>
</head>
<body background="Images/bckgrnd.jpg">
<table bgcolor="#ffffff" width=100%>
<tr>
<td>
<table width=100% bgcolor=darkblue>
<tr>
<td bgcolor=yellow><b><font color=blue face="comic sans ms"
size=+2>Welcome:Guest</font></b></td>
<td align=center width=10% bgcolor=yellow><b><font color=white size=+2
face="comic sans ms"><a href="index.jsp">SIGNUP</font></b></a></td>
</tr>
</table></table>
<table width=100%>
<tr>
<td bgcolor="black"><b><img src="Images/logo.jpg" height=110
></img></font></b></td>
<td bgcolor="orange" width=100%><img src="banner/search.jpg" height=110
width=100%>
</img></td>
</tr>
</table>
<marquee behavior="alternate"><font size="10px" color="white">STUDENT
NOTES</font></marquee>
<ul>
<li><a href="stu_home.jsp">HOME</a></li>
<li><a href="aboutus.jsp">ABOUT US</a></li>
<li><a href="feedback.jsp">FEEDBACK</a></li>
<li><a href="help.jsp">HELP</a></li>
<li><a href="site.jsp">SITE MAP</a></li>
<li><a href="changepwd.jsp">SETTINGS</a></li>
</ul>
<div id="field"><font color="blue">
<table align="center" bgcolor="orange" border="2">
<%@page import="java.io.*,java.sql.*"%>
<%! Connection con ; Statement ps ; ResultSet rs ;
%>
<%
try{
String fnm;
fnm=request.getParameter("flnm");
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="select * from notes where filename='"+fnm+"'" ;
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
<tr><td>FILE: </td><td><%=rs.getBinaryStream("NOTES")%></td></tr>
<% }
ps.close();
con.close();%>
</table>
</font>
</div>
<div><img src="Images/srch.jpg" height="350" width="500"></div>
</body>
</html>