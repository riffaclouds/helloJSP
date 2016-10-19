<!DOCTYPE html>
<html>
	<body>
	<head></head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>helloJSP! JSP opdrachten</title>
	</head>
	<h1>Opdracht 8/9: User controlled, multiplication table</h1>
	<%--
	//check welke knop bezoeker heeft geklikt
	if (request.getParameter("b1") != null) {
    	//haal de parameter(s) binnen
    	String invoer = request.getParameter("f1");
    	int getal = Integer.parseInt(invoer);
    	getal = 1;
	}
	--%>	
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
	
	
	
	<form action = "op08.jsp" method = "get">
		<input type = "text" name = "f1" value = "<%=tafelGetal %>"><br>
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
		<input type = "hidden" name = "f1" value = "<%=tafelGetal %>">
		<input type = "submit" name = "min" value = "-">
		<input type = "submit" name = "plus" value = "+">	
	</form>
	<% 
	}
	%>
	
	
	
		
	<br><br>
	<a href="http://192.168.1.104:8080/helloJSP/op07.jsp">Previous</a>
	<a href="http://192.168.1.104:8080/helloJSP/op10.jsp">Next</a>
	</body>
</html>