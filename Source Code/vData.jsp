<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>
<br><br><br><br><br><br><br>
<h3>
<font size="" color="#cc0000">
<table align="center" cellspacing=10 >

<tr><th>Rid<th>Title<th>Content

<%
try{
	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
ResultSet rs=st1.executeQuery("select * from querydata");
int c=0;
while(rs.next())
{c++;
%>
<tr><td><font size="" color="#6666cc"><%=c%><td><font size="" color="#6666cc"><textarea id="" rows="2" cols="27" readonly><%=rs.getString(2)%></textarea><td><font size="" color="#6666cc"><textarea id="" rows="4" cols="47"><%=rs.getString(3)%></textarea>
<%
}
}
catch(Exception e){
System.out.println("Exception Occured");}


%>
</table>
</body>
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>

</html>