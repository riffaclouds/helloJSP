<!DOCTYPE html>
<html>
	<body>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>helloJSP! JSP opdrachten</title>
	</head>
	<h1>Opdracht 4: Fibonacci cijfers</h1>
	<%
	long arg0 = 0L;
	long arg1 = 1L;
	long som = arg0 + arg1;
	long maxWaarde = 900000000000000000L;
	
	out.println(arg0);
	out.println("<br>" + arg1);
	
	out.println("<br>" + som);
	
	for (int i = 0; som < maxWaarde; i++){
		
		
		arg0 = arg1;
		arg1 = som;		
		som = arg0 + arg1;
		out.println(som);
		}
	
	%>
	
	
	<br><br>
	<a href="http://192.168.1.104:8080/helloJSP/op03.jsp">Previous</a>
	<a href="http://192.168.1.104:8080/helloJSP/op05.jsp">Next</a>
	</body>
</html>