	<%@ include file="uheader.jsp"%>

<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page  import="java.sql.*" import="java.util.Vector" import="databaseconnection.*"  import="Algorithm.*" import="javax.swing.JOptionPane"%>


<%

String key=request.getParameter("id");
%>
<h2>View Data</h2>
<table cellspacing="20">

<%
try{
String q1="select * from querydata where rid='"+key+"'";

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

ResultSet rs=st.executeQuery(q1);
Blob data=null;
if(rs.next())
{
%>

<tr><td>Title: <i><%=rs.getString("data")%></i></h4><td>Authors: <i><%=rs.getString("author")%></i>
</table>
<table cellspacing="20">
<tr><td><h3>Content</h3><textarea name="" rows="" cols="40" readonly><%=rs.getString("file")%></textarea>

<%
data=rs.getBlob("file");
session.setAttribute("file",data);


}
}catch(Exception e){
System.out.println("Exception Occured"+e);
e.printStackTrace();}


%>
<tr><td align="right">

<form method="post" action="download.jsp">
<input type="submit" value="Download">
	
</form>
</table>
	<%@ include file="footer.jsp"%>