<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<title>JSP opdrachten</title>
</head>
<body>
	<a class="arrow" href="http://localhost:8080/helloJSP/op12.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/zero.jsp">&rarr;</a>
	<h1>Opdracht 13: Calculator</h1>
	
	<!-- JSP magic code -->
	<%
	int num1, num2;
	int result=0;
	String errorMessage="";
	
	
	%>
	
	<!-- calculator -->
	<form action="op13.jsp" method="get">
		<input type=text name=arg1 value="<%=result%>" onfocus="if(this.value=='0') this.value='';"> 
		<input type=text name=arg2 value="">
		
	</form>
	
	
	<br><br>
	<a href="http://localhost:8080/helloJSP/op12.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Next</a>	
	
</body>
</html>