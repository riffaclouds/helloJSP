<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a class="arrow" href="http://localhost:8080/helloJSP/zero.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op02.jsp">&rarr;</a>
	
	<!-- nummerlijst links -->
	<%for(int i=1; i <= 15; i++){ %>
		<%if(i == 9){ %>
	
		
		
		<%}else if(i < 10){ %>
			<a class="arrow" href="op0<%=i%>.jsp"><%=i%></a>
			
		<%}else{ %>
			<a class="arrow" href="op<%=i%>.jsp"><%=i%></a>
		<%} %>
		
	<%} %>
	<a class="arrow" href="auto.jsp">auto</a>
		
	<h1>Overview</h1>
	
	
	
	<!-- overzicht van alle opdrachten -->
	<iframe src="zero.jsp"></iframe>
	<iframe src="op01.jsp"></iframe>
	<iframe src="op02.jsp"></iframe>
	<iframe src="op03.jsp"></iframe>
	<iframe src="op04.jsp"></iframe>
	<iframe src="op05.jsp"></iframe>
	<iframe src="op06.jsp"></iframe>
	<iframe src="op07.jsp"></iframe>
	<iframe src="op08.jsp"></iframe>
	<iframe src="op10.jsp"></iframe>
	<iframe src="op11.jsp"></iframe>
	<iframe src="op12.jsp"></iframe>
	<iframe src="op13.jsp"></iframe>
	<iframe src="op14.jsp"></iframe>
	<iframe src="op15.jsp"></iframe>
	<iframe src="auto.jsp"></iframe>
	

	<br><br>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op02.jsp">Next</a>	
</body>
</html>