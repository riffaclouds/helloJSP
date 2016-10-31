<!DOCTYPE html>
<html>
	<body>
	<head>
		
		<title>helloJSP! JSP opdrachten</title>
		<link rel="stylesheet" type="text/css" href="design.css">
	</head>
	<a class="arrow" href="http://localhost:8080/helloJSP/op08.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op11.jsp">&rarr;</a>
	<h1>Opdracht 10: Celsius to faherenheit</h1>
	
	
	
	
	<p>voer een celsius temperatuur in om het te converteren naar fahrenheit</p>
	<form action="op10result.jsp" method="get">
		<!-- een clear on click feature, zou cool zijn als  -->
		<input type="text" name="textField" value="&#8451;" onfocus="if(this.value=='&#8451;') this.value='';"> 
		<input type="submit" name="button" value="convert">
	
	</form>
	
	<br><br>
	<a href="http://localhost:8080/helloJSP/op08.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op11.jsp">Next</a>
	</body>
</html>