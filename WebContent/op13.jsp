<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<title>JSP opdrachten</title>
</head>
<body>
	<a href="overview.jsp">
		<img src="images/ui/overview.png" alt="overview icon" style="width: 30px; height: 30px;"></a>
	<a class="menu" href="http://localhost:8080/helloJSP/op12.jsp">&larr;</a>
	<a class="menu" href="http://localhost:8080/helloJSP/op14.jsp">&rarr;</a>
	<h1>Opdracht 13: Calculator</h1>
	
	<!-- JSP magic code -->
	<%
	double num1, num2;
	double result = 0;
	String errorMessage = "";
	String action = "";
	
	if(request.getParameter("operator") !=null){
		try{
			if(request.getParameter("arg1").equals("") || request.getParameter("arg2").equals("")){
				errorMessage = "Voer een heel getal in, in beide velden!";
			} else if(request.getParameter("operator").equals("+")){
				action = "+";
				num1 = Double.parseDouble(request.getParameter("arg1"));
				num2 = Double.parseDouble(request.getParameter("arg2"));
				result = num1 + num2;
			} else if(request.getParameter("operator").equals("-")){
				action = "-";
				num1 = Double.parseDouble(request.getParameter("arg1"));
				num2 = Double.parseDouble(request.getParameter("arg2"));
				result = num1 - num2;
			} 	else if(request.getParameter("operator").equals("x")){
				action = "*";
				num1 = Double.parseDouble(request.getParameter("arg1"));
				num2 = Double.parseDouble(request.getParameter("arg2"));
				result = num1 * num2;
			} else if(request.getParameter("operator").equals("/")){
				action = "/";
				num1 = Double.parseDouble(request.getParameter("arg1"));
				num2 = Double.parseDouble(request.getParameter("arg2"));
				result = num1 / num2;
			}
		} catch(NumberFormatException e){
			errorMessage = "Voer een heel getal in, in beide velden!";
		} finally{
			
		}
	
	}
	
	%>
	
	<!-- calculator -->
	<div class="shell">
		<form action="op13.jsp" method="get">
		
			<div class="bar">Calculator</div>
			
		
			<div class="input">
				<p>Eerste getal</p>
				<input type=text name=arg1 value="<%=result%>" onfocus="if(this.value=='0.0') this.value='';">
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
	<a href="http://localhost:8080/helloJSP/op12.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op14.jsp">Next</a>	
	
</body>
</html>