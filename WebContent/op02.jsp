<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="design.css">
			<style>
		table {
    		font-family: arial, sans-serif;
    		border-collapse: collapse;
    		width: 15%;
    		
}
			
		td, th {
    		border: 1px solid #dddddd;
    		text-align: center;
    		padding: 8px;
}
		table#t01 th{
		background-color: #cce6ff;
		}

		tr:nth-child(even) {
    		background-color: #dddddd;
}
		tr:nth-child(odd) {
    		background-color: white;
}

		</style>
		<title>JSP opdrachten</title>
	</head>
	<body>
	<a class="arrow" href="http://localhost:8080/helloJSP/op01.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op03.jsp">&rarr;</a>
	<h1>Opdracht 2: The Time Table</h1>
	<%
	int sec = 1;
	int min = sec * 60;
	int uur = min * 60;
	int dag = uur * 24;
	int week = dag * 7;
	int jaar = week * 52;
	
	%>
	
	<p> 1 minuut = 60 seconden<br><br><br>
	<table id="t01">
		<tr>
			<th>Eenheid</th>
			<th>Aantal Seconden</th>
		</tr>
		<tr>
			<td>Minuut</td>
			<td><%=min %></td>
		</tr>
		<tr>
			<td>Uur</td>
			<td><%=uur %></td>
		</tr>
		<tr>
			<td>Dag</td>
			<td><%=dag %></td>
		</tr>
		<tr>
			<td>Week</td>
			<td><%=week %></td>
		</tr>
		<tr>
			<td>Jaar</td>
			<td><%=jaar %></td>
		</tr>
	</table>
	
	<br>
	<a href="http://localhost:8080/helloJSP/op01.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op03.jsp">Next</a>
	</body>
</html>