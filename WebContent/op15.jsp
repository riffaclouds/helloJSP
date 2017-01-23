<%@ page import="com.helloJSP.Calculator" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a href="overview.jsp">
		<img src="images/ui/overview.png" alt="overview icon" style="width: 30px; height: 30px;"></a>
	<a class="menu" href="http://localhost:8080/helloJSP/op14.jsp">&larr;</a>
	<a class="menu" href="http://localhost:8080/helloJSP/auto.jsp">&rarr;</a>
	<%
	Calculator calc = new Calculator();
	String uitkomst = "";
	String errorMessage = "";
	
	if(request.getParameter("operator") != null){
		if(request.getParameter("arg1").equals("") || request.getParameter("arg2").equals("")){
			errorMessage = "Voer een heel getal in, in beide velden!";
		} 
		else{
			try{
				double getal1 = Double.parseDouble(request.getParameter("arg1"));
			    double getal2 = Double.parseDouble(request.getParameter("arg2"));
			    String functie = request.getParameter("operator");
			    uitkomst += calc.bereken(getal1, getal2, functie);
			}
			catch(NumberFormatException e){
				errorMessage = "voer een echt getal in";
			}
			finally{
				
			}
		}
	}
	
	
	%>
	
	<h1>Opdracht 15: Java class + JSP - Calculator</h1>
	
	<!-- calculator -->
	<div class="shell">
		<form action="op15.jsp" method="get">
		
			<div class="bar">Calculator</div>
			
		
			<div class="input">
				<p>Eerste getal</p>
				<input type=text name=arg1 value="<%=uitkomst%>" onfocus="if(this.value=='0.0') this.value='';">
			</div>
			<div class="input">
				<p>Tweede getal</p>
				<input type=text name=arg2 value="">
			</div>
			<br>

			<input type="submit" name="operator" value="+">
			<input type="submit" name="operator" value="x">
			<input type="submit" name="operator" value="-">
			<input type="submit" name="operator" value="/">
						
			<p class="error"><%=errorMessage%></p>
		
	</form>
	</div>


	<br><br>
	<a href="http://localhost:8080/helloJSP/op14.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/auto.jsp">Next</a>
</body>
</html>