	<%@ include file="uheader.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>Fuzzy Search</title>
<link rel="stylesheet" href="jquery-ui.css">
<link rel="stylesheet" href="style.css">
<script src="jquery-1.10.2.js"></script>
<script src="jquery-ui.js"></script>
<script src="search.js"></script>

</head>
<h3>Wellcome <%=(String)session.getAttribute("name")%>
<center>
<br>

	<div class="container">
		<div class="instruction">
			<h5></h5>
			<div class="search-container">
				<div class="ui-widget">
<form method="post" action="search2.jsp">
	

									<h1>Search Here</h1>
									
					<input type="text" id="search" name="search" class="search" placeholder="search here"/ size="30">
<input class="submit" type="submit"  value="Search" />
                                    </form><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2" color="red" align="right"><b>* Here Instant Search Performs </font>
                                </div>			
			</div>
		</div>
	</div></center>
<br><br>


</body>
</html>
<br><br><br><br><br><br><br><br><br><br>