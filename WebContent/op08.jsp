<!DOCTYPE html>
<html>
	<body>
	<head></head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>helloJSP! JSP opdrachten</title>
		<link rel="stylesheet" type="text/css" href="design.css">
	</head>	
	<%
	boolean showTable = false;
	String invoer;
	int tafelGetal = 0;
	String foutBoodschap = "";
	//if statement om te kijken of er user input is. (getal ingevoerd + op een knop gedrukt)
	if(request.getParameter("knop") != null
			|| request.getParameter("min") != null
			|| request.getParameter("plus") != null){
		invoer = request.getParameter("f1");
		try{
			tafelGetal = Integer.parseInt(invoer);
			showTable = true;
		} catch(NumberFormatException e){
			
			foutBoodschap ="<p style=\"color:red\">de tafel van " + invoer + "  bestaat niet.</p><br> U moet een heel getal(0-9) invoeren!";
		}
		if(request.getParameter("min") != null){
			tafelGetal--;
		} else if(request.getParameter("plus") != null){
			tafelGetal++;
		}
	}
	
	
	%>
	<a class="menu" href="http://localhost:8080/helloJSP/op07.jsp">&larr;</a>
	<a class="menu" href="http://localhost:8080/helloJSP/op10.jsp">&rarr;</a>
	
	<h1>Opdracht 8/9: User controlled, multiplication table</h1>
	<form action = "op08.jsp" method = "get">
		<input type = "text" name = "f1" value = "<%=tafelGetal %>"  onfocus="if(this.value=='<%=tafelGetal %>') this.value='';"><br>
		<p><%=foutBoodschap %></p>
		<input type = "submit" name = "knop" value = "Calculate">
		
	</form>
	<%if(showTable){ %>
	<table>
	<% for(int i = 1; i < 11; i++) {%>
	<tr>
		<td id=row><%out.println("" + i + " x " + tafelGetal + " = "+ i * tafelGetal); %> </td>
		
	
	<% 	
		}
	%>
	</tr>
	</table>
	
	<form action = "op08.jsp" method = "get">
		<input type = "hidden" name = "f1" value ="<%=tafelGetal%>">
		<input type = "submit" name = "min" value = "-">
		<input type = "submit" name = "plus" value = "+">	
	</form>
	<% 
	}
	%>	
	<br><br>
	<a href="http://localhost:8080/helloJSP/op07.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op10.jsp">Next</a>
	</body>
</html>