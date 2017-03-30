
<%@ include file="aheader.jsp"%>

<br>
<h2>Upload Data..</h2>
<center>



 <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color=red>Data Inserted</font>");
                                                       }
                                               %>
	<form action="upload.jsp" ><br><br>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="" color="#00cc00">Upload Content for Users</h3></font>
		<table width="400px" align="center" border=0 style="background-color:ffeeff;">
			<tr>

			</tr>

			<tr>
				<td align="center" colspan=2>&nbsp;</td>
			</tr>




			<tr>
				<td><h3>Author </td>
				<td>
					<input type="text" name="auth"  required size=38>
				<td>
			</tr>



			<tr>
				<td><h3>Data </td>
				<td>
									<input type="text" name="data" required size=38>


				<td>
			</tr>
			<tr>
				<td><h3>Content </td>
				<td>

					<textarea  rows="" cols="40" name="cont"></textarea>

				<td>
			</tr>

			<tr>
				<td><h3>Keyword </td>
				<td>
					<input type="text" name="key" required size=38>
				<td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="Submit" value="UPLOAD"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>

		</table>
	</form>
	
</body>


<br><br><br><br>	
<%@ include file="footer.jsp"%>