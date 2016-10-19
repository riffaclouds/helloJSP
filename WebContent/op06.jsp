<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
		table{
		border: 1px solid black;
		border-collapse: collapse;
		}
		
		td#row{
			text-align:left;
			background-color: #b5dbf2;
			
		}
		
		
		</style>
	</head>
	<body>
	<head>
		
		<title>helloJSP! JSP opdrachten</title>
	</head>
	<h1>Opdracht 6: Tafel van  5</h1>
	
	<table>
	<% for(int i = 1; i < 11; i++) {%>
	<tr>
		<td id=row><%out.println("" + i + " x " + "5 = "+ i * 5); %> </td>

	
	<% 
			
		}
	%>
	</tr>
	</table>
	
	
	<br><br>
	<a href="http://192.168.1.104:8080/helloJSP/op05.jsp">Previous</a>
	<a href="http://192.168.1.104:8080/helloJSP/op07.jsp">Next</a>
	</body>
</html>