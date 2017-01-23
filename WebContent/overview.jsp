<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a class="menu" href="http://localhost:8080/helloJSP/zero.jsp">&larr;</a>
	<a class="menu" href="http://localhost:8080/helloJSP/op02.jsp">&rarr;</a>
	
	<!-- nummerlijst links -->
	<%for(int i=1; i <= 15; i++){ %>
		<%if(i == 9){ %>
			<!-- er is geen aparte opdracht 9 pagina, deze is gebundeld -->	
		<%}else if(i < 10){ %>
			<a class="menu" href="op0<%=i%>.jsp"><%=i%></a>
			
		<%}else{ %>
			<a class="menu" href="op<%=i%>.jsp"><%=i%></a>
		<%} %>
		
	<%} %>
	<a class="menu" href="auto.jsp">auto</a>
		
	<h1>Overview</h1>
	
	
	<!-- overzicht van alle opdrachten -->
	<iframe src="zero.jsp"></iframe>
	
	<%for(int i=1; i <= 15; i++){ %>
		<%if(i == 9){ %>
			<!-- er is geen aparte opdracht 9 pagina, deze is gebundeld -->	
		<%}else if(i < 10){ %>
			<iframe src="op0<%=i%>.jsp"></iframe>
			
		<%}else{ %>
			<iframe src="op<%=i%>.jsp"></iframe>
		<%} %>
		
	<%} %>

	<iframe src="auto.jsp"></iframe>
	

	<br><br>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op02.jsp">Next</a>	
</body>
</html>