


<%@ include file="header.jsp"%>
	<script type="text/javascript">
	function CheckOut()
	{
		var nameu=document.provider.pname.value;
		var username=document.provider.puname.value;
		var password=document.provider.ppass.value;
		var cpassword=document.provider.pcpass.value;
		var company=document.provider.pcname.value;
		var mail=document.provider.pemail.value;
		var contact=document.provider.pcont.value;
		if((nameu=="") || (username="") || (password=="") || (cpassword=="") || (company="") || (mail=="") || (contact==""))
		{
			alert("Pls Fill the information..");
		}
		else if(password!=cpassword)
		{
			alert("Password are not Equal.");
		}
		else if(password.length<5)
		{
			alert("Password length minimam 5 char.");
		}
		else if(isNaN(contact))
		{
			alert("Enter phone correct Number.");
		}
		else
		{
			document.provider.action="./PRegister";
			document.provider.submit();
		}

	}
	</script>
<form method="post" action="register1.jsp">
	
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                                  out.println("<h2>Registration Completed</h2>");
                                                       }
                                               %>
<h1>Register Here</h1>
			<div class="text"><span>&nbsp;&nbsp;&nbsp; Fill your Information.</span><br />
<br><br><br>
<center>
					<table  width="417" height="227" name="tab">
                  		<tr>
                  			<td width=146 height=45><font face="Verdana" size=3 color="#663300" required>Name</font></td>
                  			<td width="261">&nbsp;<input type=text name="name" size=25></td>
                  		</tr>
                  		<tr>
							<td width="146" height="45"><font face="Verdana" size=3 color="#663300"  required>Username</font></td>
							<td height="45">&nbsp;<font face="Verdana" size=3><input type=text name="un" size="25"></font></td>
						</tr>
						<tr>
							<td width="146" height="45"><font face="Verdana" size=3 color="#663300"  required>Password</font></td>
							<td height="45">&nbsp;<font face="Verdana" size=3><input type=password name="pwd" size=26></font></td>
						</tr>
						<tr>

						</tr>
                                                        <td width="146" height="45"><font face="Verdana" size=3 color="#663300"  required>Address</font></td>
							<td height="45">&nbsp;<font face="Verdana" size=3><input type=text name="addr" size=26></font></td>
						<tr>
                  			<td width=146 height=45><font face="Verdana" size=3 color="#663300"  required>Email ID</font></td>
                  			<td>&nbsp;<input type=text name="email" size=25></td>
                  		</tr>
                  		<tr>
                  			<td width=146 height=45><font face="Verdana" size=3 color="#663300"  required>Contact No</font></td>
                  			<td>&nbsp;<input type=text name="tele" size=25></td>
                  		</tr>
						<tr>
							<td>&nbsp;</td>
							<td align="center"><input type="submit" value="Register"></td>
						</tr>
                  	</table>										<br>					<br>					<br>					<br>					<br>					<br>					<br>					<br>					<br>
<%@ include file="footer.jsp"%>
</form>