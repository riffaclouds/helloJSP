<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a class="menu" href="http://localhost:8080/helloJSP/zero.jsp">&larr;</a>
	<a class="menu" href="http://localhost:8080/helloJSP/op02.jsp">&rarr;</a>
	<h1>Opdracht 1: valuta deling</h1>
	<%
	String name1 = "Refat Oemar";
	String name2 = "Tony Stark";
	String name3 = "Steve Rogers";
	String name4 = "Thor Odinson";
	double bedragT = 113;
	double bedragP = bedragT / 4;
	double bedrag1 = 0;
	double bedrag2 = 0;
	double bedrag3 = 0;
	double bedrag4 = 0;
	
	%>
	
	<p>
	<%=name1%> krijgt &euro;<%=bedrag1 += bedragP%><br>
	<%=name2%> krijgt &euro;<%=bedrag2 += bedragP%><br>	
	<%=name3%> krijgt &euro;<%=bedrag3 += bedragP%><br>
	<%=name4%> krijgt &euro;<%=bedrag4 += bedragP%><br><br><br>
	bedrag1 &rarr; &euro;<%=bedrag1%><br>
	bedragPart &rarr; &euro;<%=bedragP%><br>
	bedragTotal &rarr; &euro;<%=bedragT%><br><br>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op02.jsp">Next</a>	
	</p>
</body>
</html>