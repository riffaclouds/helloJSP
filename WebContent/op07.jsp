<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
		table{
		border: 1px solid black;
		border-collapse: collapse;
		}
		
		td#row.first{
			width: 40px;
			height: 30px;
			background-color: #b5dbf2;
			text-align: center;
		}
		td#row{
			width: 40px;
			height: 30px;
			background-color: #b5dbf2;
			text-align: center;
		}
		td#col{
			width: 40px;
			height: 40px;
			border: 1px solid black;	
			border-collapse: collapse;
			text-align: center;
			
		}
		
		
		</style>
	</head>
	<body>
	<head>
		
		<title>helloJSP! JSP opdrachten</title>
	</head>
	<h1>Opdracht 6: Multiplication Table</h1>
	
	<table>
	<tr>	
		<% for(int k = 1; k < 21; k++){%>
			
			<td id=row class = "first"><%out.println("" + k);%> </td>
	
	
	<% 
			}%>
	</tr>
	<!--dit is de Y axis -->
	<% for(int i = 2; i < 16; i++) {%>
	
	<tr>
		<!--dit is eerste rij van de Y axis -->
		<td id=row><%out.println("" + i); %> </td>
		
	
	
		<!--dit is de X axis -->
		<% for(int j = 2; j < 21; j++){%>
			
			<td id=col><%out.println("" + j * i);%> </td>
	
	
	<% 
			}
		}
	%>
	</tr>
	</table>
	
	
	<br><br>
	<a href="http://localhost:8080/helloJSP/op06.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op08.jsp">Next</a>
	</body>
</html>