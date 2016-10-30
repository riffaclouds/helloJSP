<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<title>JSP opdrachten</title>

</head>
<body>
	<a href="http://localhost:8080/helloJSP/zero.jsp">&larr;</a>
	<a href="http://localhost:8080/helloJSP/op02.jsp">&rarr;</a>
	<h1>Opdracht 12: temperature converter</h1>
	
	<!-- JSP magic code -->
	
	
	<!--de converter zit in onderstaande div-->
	<div class="converter">
		<form action="op12.jsp" method="get">
			<div class="bar">Temperature Converter</div>
			<div class="input">
				<p>Celsius</p>
				<input type="text" name="celsius" value="">
			</div>
			<div class="input">
				<p>fahrenheit</p>
				<input type="text" name="fahrenheit" value="">
			</div>
			<div id="gradeninvoer_knoppen">
				<input type="submit" name="button" value="Convert">
			</div>
		</form>	
	</div>

	<br><br>
	<a href="http://localhost:8080/helloJSP/op11.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Next</a>	
	
</body>
</html>