<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title><style>
#field{
float: right;
margin: 2px 100px;
width: 450px;
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
<marquee behaivior="alternate"><font size="10px" color="white">RESULT
2017</font> </marquee>
<ul>
<li><a href="stu_home.jsp">HOME</a></li>
<li><a href="aboutus.jsp">ABOUT US</a></li>
<li><a href="feedback.jsp">FEEDBACK</a></li>
<li><a href="help.jsp">HELP</a></li>
<li><a href="site.jsp">SITE MAP</a></li>
<li><marquee><font color="white"><b>STUDENT ZONE</b></font></marquee></li>
</ul>
<div id="field">
<table align="center" bgcolor="orange" border="2">
<%@page import="java.io.*,java.sql.*"%>
<%! Connection con ; PreparedStatement ps ; ResultSet rs ;
%>
<%
try{
int sid;
sid=Integer.parseInt(request.getParameter("Id"));
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="select * from result where ID=?" ;
ps=con.prepareStatement(qry);
ps.setInt(1,sid);
rs=ps.executeQuery();
rs.next();
}
catch(Exception ex)
{
out.println(ex);
}
%>
<br><br><br><br> <th height="50" colspan="2">RESULT</th>
<tr> <td align="center" height="20" width="200">STUDENT
NAME:</td><td align="center" width="200"><%=rs.getString("Name")%></td></tr>
<tr> <td height="20" align="center">COURSE:</td><td
align="center"><%=rs.getString("course")%></td> </tr>
<tr> <td height="20" align="center">SEMESTER:</td><td
align="center"><%=rs.getString("sem")%></td></tr>
<tr> <td height="20" align="center">MARKS:</td><td
align="center"><%=rs.getString("marks")%></td> </tr>
<tr> <td height="20" align="center">MAXIMUM MARKS:</td><td
align="center"><%=rs.getString("max_marks")%></td></tr>
<% ps.close();
con.close();%>
</table></div>
<div><img src="Images/rss.jpg" height="350" width="600"></div>
<%
}%>
</body>
</html>
