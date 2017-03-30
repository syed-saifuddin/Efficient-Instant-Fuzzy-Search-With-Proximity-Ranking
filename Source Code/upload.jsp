<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
	
<%


String auth=request.getParameter("auth");
String data=request.getParameter("data");
String key=request.getParameter("key");
String cont=request.getParameter("cont");

%>

<%
try{
	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();

	String s="insert into querydata(data,file,author,keywords ) values('"+data+"','"+cont+"','"+auth+"','"+key+"' ) ";
	System.out.println(s);
	int q= st1.executeUpdate(s);


if(q>0)
{
	response.sendRedirect("data.jsp?message=succ");
	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("data.jsp?message=fail");

}
catch(Exception e)
{
out.println(e);
	}
%>
