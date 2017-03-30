<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Reciprocal 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140119

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Varela+Round" rel="stylesheet" />
<link href="default2.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">Efficient Instant-Fuzzy Search with <br>Proximity
Ranking</a></h1>

			</div>
			<div id="social">
				<ul class="contact">
					<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
					<li><a href="#" class="icon icon-facebook"><span></span></a></li>
					<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
					<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
					<li><a href="#" class="icon icon-rss"><span>Pinterest</span></a></li>
				</ul>
			</div>
		</div>
		<div id="menu" class="container">
			<ul>
				<li class="current_page_item"><a href="admin_home.jsp" accesskey="1" title="">Homepage</a></li>
								<li class="current_page_item"><a href="data.jsp" accesskey="1" title="">Data Upload</a></li>
																<li class="current_page_item"><a href="vData.jsp" accesskey="1" title="">View Data</a></li>
					<li class="current_page_item"><a href="fuzzy.jsp" accesskey="1" title="">Fuzzy Data</a></li>
																											<li class="current_page_item"><a href="index.jsp" accesskey="1" title="">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="page" class="container">

<br><br>
<h2>Fuzzy data Preparation..</h2>
<center>
<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*"  %>

<%
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
st1.executeUpdate("delete  from fuzzydata");
String sss1 = "SELECT keywords, COUNT(keywords) FROM temp GROUP BY keywords";
ResultSet rs=st1.executeQuery(sss1);
Statement st2 = con.createStatement();

while(rs.next())
	{
		st2.executeUpdate("insert into fuzzydata values('"+rs.getString(1)+"',"+rs.getString(2)+")");
	}


%>
	<%
	%>




<center>
  <h1>Key Words</h1>
  <div id="table_wrapper">
  <div id="tbody">

    <table align="center">
    <tr><td>    <tr><td><br>
	<font size="3" color="#a6fb33"><font size="4" color="#ff6600">Retrevieng file key words.....</font></font>
	<tr><td>    <br><tr><td>
	<font size="3" color="#a6fb33"> <font size="" color="#ff9900">Data Loaded..........</font></font>

	<tr><td>    <br>


	<%

String sss2 = "select * from fuzzydata";
ResultSet rs2=st2.executeQuery(sss2);

	String s1="";
while(rs2.next())
	{
		%>

	<tr><td>    <tr><td>
<font size="3" color="#66ff00"><%=rs2.getString(1)%></font><td><font size="3" color="#66ff00"><%=rs2.getString(2)%></font><br>

	<%}
	%>
		
   </table>

  </div>
</div>
</font>
<br><br>
<input type="submit" value="store" onclick="alert('Data Stored')"/>
<br>



<br><br><br><br>	
<%@ include file="footer.jsp"%>
