<!DOCTYPE html>
<html>
	<body>
	<head>
		<style type="text/css">
		table#chessboard{
			border: 1px solid black;
			border-collapse: collapse;
		}
		
		#chessboard td{
			width: 30px;
			height: 30px;
			border: 1px solid black;
		}
		
		#chessboard td.zwart{
			background-color: black;
		}
		
		
		#chessboard td.wit{
			background-color: white;
		}
		
		</style>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>helloJSP! JSP opdrachten</title>
	</head>
	<h1>Opdracht 5: Chessboard</h1>
	
	<table id="chessboard">
	<%for(int n = 0; n < 8; n++) {%>
		<tr>
		<%for(int l = 0; l< 8; l++) {
			if((n + l) % 2 == 0){
			%>
		
			<td class = "zwart"></td>
			
			<%} else { %>
			
			<td class = "wit"></td>
			
			<% }
			}%>
			</tr>
			<%} %>
	
	
	</table>
	
	
	<br><br>
	<a href="http://192.168.1.104:8080/helloJSP/op04.jsp">Previous</a>
	<a href="http://192.168.1.104:8080/helloJSP/op06.jsp">Next</a>
	</body>
</html>