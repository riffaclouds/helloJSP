<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<title>JSP opdrachten</title>
</head>
<body>
	<a class="arrow" href="http://localhost:8080/helloJSP/op11.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/zero.jsp">&rarr;</a>
	<h1>Opdracht 12: temperature converter</h1>
	
	<!-- JSP magic code -->
	<%
	int cels, fahr, result;
	String error="";
	if(request.getParameter("button") !=null){
		try{
			if(!request.getParameter("celsius").equals("") && !request.getParameter("fahrenheit").equals("")){
				error = "Voer maar 1 temperatuur in!";
			}else if(!request.getParameter("celsius").equals("")){
				cels = Integer.parseInt(request.getParameter("celsius"));
				fahr = Math.round(cels * 1.8 + 32);
			}
			
		}catch(NumberFormatException e){
			error = "Voer een heel getal in(0-9)";
		}
	}
	
	%>
	
	
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