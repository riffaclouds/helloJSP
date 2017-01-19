<%@ page import="com.helloJSP.Graden" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a href="overview.jsp">
		<img src="images/ui/overview.png" alt="overview icon" style="width: 30px; height: 30px;"></a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op13.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op15.jsp">&rarr;</a>
	<h1>Opdracht 14: Java class + JSP - temperature converter</h1>
	<p>is the text over here > <%= Graden.makeItLower("YEAH BUDDY") %>, all in lowercase?</p><br>
	<p>Oh YEAH!!</p>
	
	<%
	Graden g = new Graden();
	String celsValue = "";
	String fahrValue = "";
	String error = "";
	
	if(request.getParameter("button") != null){
		try{
			//checken of er iets in beide velden is ingevoerd
			if(!request.getParameter("celsius").equals("") 
				&& !request.getParameter("fahrenheit").equals("")){
				error = "Voer maar 1 temperatuur in!";
			}
			//celsius is ingevoerd
			else if(!request.getParameter("celsius").equals("")){
				int fahr = g.naarFahr(request.getParameter("celsius"));
				fahrValue += fahr;
			}
			//fahrenheit is ingevoerd
			else if(!request.getParameter("fahrenheit").equals("")){
				int cels = g.naarCels(request.getParameter("fahrenheit"));
				celsValue += cels;				
			}
		} 
		//als er iets anders dan een int is ingevoerd
		catch(NumberFormatException e){
			error = "Voer een heel getal in";
		}
	}
	
	
	
	%>
	<div class="shell">
		<form action="op14.jsp" method="get">
			<div class="bar">Temperature shell</div>
			<div class="input">
				<p>Celsius</p>
				<input type="text" name="celsius" value="<%=celsValue%>">
			</div>
			<div class="input">
				<p>fahrenheit</p>
				<input type="text" name="fahrenheit" value="<%=fahrValue%>">
			</div>
			
			<div id="gradeninvoer_knoppen">
				<input type="submit" name="button" value="Convert">
			</div>
			<p class="error"><%=error%>
		</form>	
	</div>
	

	<br><br>
	<a href="http://localhost:8080/helloJSP/op13.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op15.jsp">Next</a>
</body>
</html>