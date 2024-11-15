<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<%!String cHolderName, expiryDate;
int amt,cVV,pIn,sID,tID;
long cNumber;
java.util.Date pd= new java.util.Date();
String DATE_FORMAT = "yyyy-mm-dd";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String pDate = sdf.format(pd);
%>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student
","student");
String qry1="select max(transid) from PAYMENT";
PreparedStatement ps1=con1.prepareStatement(qry1);
ResultSet rs1=ps1.executeQuery();
if(rs1.next()){
tID=rs1.getInt(1);
tID++;
}
}
catch(Exception ex){
out.println(ex);
} %>
<%
cHolderName=request.getParameter("txtname");
expiryDate=request.getParameter("txtexp");
amt=Integer.parseInt(request.getParameter("txtamnt"));
cNumber=Long.valueOf(request.getParameter("txtcrd"));
cVV=Integer.parseInt(request.getParameter("txtcvv"));
pIn=Integer.parseInt(request.getParameter("txtpin"));
sID=Integer.parseInt(request.getParameter("txtsid"));
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student",
"student");
String qry="select * from BANKCARD where CARDNO='"+cNumber+"'
and CARDHOLDER='"+cHolderName+"' and EXPIRYDATE='"+expiryDate+"' and
CVV='"+cVV+"' and PIN='"+pIn+"' and AMOUNT='"+amt+"'";
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery(qry);
if(rs.next()){
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con2=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","student
","student");
String qry2="insert into PAYMENT values(?,?,?,?,?,?)";
PreparedStatement ps2=con2.prepareStatement(qry2);
ps2.setInt(1,tID);
ps2.setString(2,pDate);
ps2.setInt(3,sID);
ps2.setInt(4,amt);
ps2.setLong(5,cNumber);
ps2.setString(6,expiryDate);
ps2.executeUpdate();
out.println("Transaction Successful");
}
else{
out.println("error");}
ps.close();
con.close();
}
catch(Exception ex){
out.println(ex);
}
%>
<% }
%>
</body>
</html>
