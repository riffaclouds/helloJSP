<%@ page import="com.helloJSP.Op14" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a class="arrow" href="http://localhost:8080/helloJSP/op13.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/zero.jsp">&rarr;</a>
	<h1>Opdracht 14: Java class + JSP - temperature converter</h1>
	<p>is the text over here > <%= Op14.makeItLower("YEAH BUDDY") %>, all in lowercase?</p><br>
	<p>Oh YEAH!!</p>

	<br><br>
	<a href="http://localhost:8080/helloJSP/op13.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Next</a>
</body>
</html>