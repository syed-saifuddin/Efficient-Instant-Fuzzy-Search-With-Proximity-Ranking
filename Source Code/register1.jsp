<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,role;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(uid) from register");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");

addr=request.getParameter("addr");

tele=request.getParameter("tele");
 email=request.getParameter("email");
un=request.getParameter("un");
pwd=request.getParameter("pwd");

//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();


int q= st.executeUpdate("insert into register values('"+i+"','"+name+"','"+addr+"','"+tele+"','"+email+"', '"+un+"', '"+pwd+"')");

if(q>0)
{
	response.sendRedirect("register.jsp?id=succ");
	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("register.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
