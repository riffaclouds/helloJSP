
<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
</head>
<body>
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
	<%=name1%> krijgt <%=bedrag1 += bedragP%><br>
	<%=name2%> krijgt <%=bedrag2 += bedragP%><br>	
	<%=name3%> krijgt <%=bedrag3 += bedragP%><br>
	<%=name4%> krijgt <%=bedrag4 += bedragP%><br><br><br>
	bedrag1 > <%=bedrag1%><br>
	bedragPart > <%=bedragP%><br>
	bedragTotal > <%=bedragT%><br><br>
	<a href="http://192.168.1.104:8080/helloJSP/zero.jsp">Previous</a>
	<a href="http://192.168.1.104:8080/helloJSP/op02.jsp">Next</a>	
	</p>
</body>
</html>