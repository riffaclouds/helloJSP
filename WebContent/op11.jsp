<!DOCTYPE html>
<html>
<head>
	<title>JSP opdrachten</title>
	<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<!-- Mic test 1, 2-->
	<%
	String field="";
	String error="";
	boolean show = false;
	int input;
	int loNum;//=Integer.MAX_VALUE;
	int hiNum;//=Integer.MIN_VALUE;
	
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
			error = "Voer een heel getal in(0-9) <strong>" + field + "</strong> is geen heel getal";
		}
	
	}//end of if statement
	
	%>
	<a class="arrow" href="http://localhost:8080/helloJSP/op10.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op12.jsp">&rarr;</a>
	<h1>Opdracht 11: laagste en hoogste getal</h1>
	<p>Voer getallen in en houd de hoogste/laagste getal bij</p>
	
	<form action="op11.jsp" method="get"> 
	<input type="text" name="textField" value="0-9" onfocus="if(this.value=='0-9') this.value='';" >
	<input type="submit" name="knop" value="OK">
	<input type="hidden" name="highest" value="<%=hiNum%>">
	<input type="hidden" name="lowest" value="<%=loNum%>">
	
	<!-- hier komen de getallen te staan-->
	
	<%if(show){ %>
	<p>
	low number: <%=loNum%><br>
	high number: <%=hiNum%><br>
	
	</p>
	
	
	<%}%>
	
	<p class="error"><%=error%></p>
	</form>
	<br><br>
	<a href="http://localhost:8080/helloJSP/op10.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op12.jsp">Next</a>	
	
</body>
</html>