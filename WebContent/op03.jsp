<!DOCTYPE html>
<html>
	<body>
	<head>
		<title>helloJSP! JSP opdrachten</title>
		<link rel="stylesheet" type="text/css" href="design.css">
	</head>
	<%@ page import="java.util.*" %>
	<a class="arrow" href="http://localhost:8080/helloJSP/op02.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op04.jsp">&rarr;</a>
	<h1>Opdracht 3: </h1>
	<%  
		
		Calendar nu = Calendar.getInstance();
		int huidigUur = nu.get(Calendar.HOUR_OF_DAY);
		//deze line ceonvert huidigUur in een string: String T = String.valueOf(huidigUur);
		
    	if(huidigUur < 12){
    		out.println("<h3>Goedemorgen</h3> Huidiguur: " + huidigUur);
    	} else if(huidigUur < 18){
    		out.println("<h3>Goedemiddag</h3> Huidiguur: " + huidigUur);
    	} else{
    		out.println("<h3>Goedenavond</h3> Huidiguur: " + huidigUur);
    	}
    		
    		
		//hier komt de overige java code
    
	%>
	<br><br>
	<a href="http://localhost:8080/helloJSP/op02.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op04.jsp">Next</a>
	</body>
</html>