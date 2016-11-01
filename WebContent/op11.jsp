<!DOCTYPE html>
<html>
<head>
	<title>JSP opdrachten</title>
	<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<%
	String field="";
	String error="";
	boolean show = false;
	int input;
	int loNum=0;
	int hiNum=0;
	
	if(request.getParameter("knop") != null
			&& request.getParameter("textField") != null){
		field = request.getParameter("textField");
		try{
			input = Integer.parseInt(field);
			
			if(input > hiNum){
				hiNum = input;
				
			}
			if(input < loNum){
				loNum = input;
			}
			
						
			show = true;
		} catch(NumberFormatException e){
			error = "Voer een heel getal in(0-9) " + field + " is geen heel getal";
		}
	
		
	}//end of if statement
	
	%>
	<a class="arrow" href="http://localhost:8080/helloJSP/op10.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op12.jsp">&rarr;</a>
	<h1>Opdracht 11: title</h1>
	<p>Voer getallen in en houd de hoogste/laagste getal bij</p>
	
	<form action="op11.jsp" method="get"> 
	<input type="text" name="textField" value="0-9" onfocus="if(this.value=='0-9') this.value='';" >
	<input type="submit" name="knop" value="OK">
	</form>
	
	<!-- hier komen de getallen te staan-->
	
	<%if(show){ %>
	<p><br>
	<%=loNum%><br>
	<%=hiNum%><br>
	</p>
	
	
	<%}%>
	
	<p class="error"><%=error%></p>
	<br><br>
	<a href="http://localhost:8080/helloJSP/op10.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op12.jsp">Next</a>	
	
</body>
</html>