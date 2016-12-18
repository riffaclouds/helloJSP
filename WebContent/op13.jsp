<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
<title>JSP opdrachten</title>
</head>
<body>
	<a class="arrow" href="http://localhost:8080/helloJSP/op12.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/zero.jsp">&rarr;</a>
	<h1>Opdracht 13: Calculator</h1>
	
	<!-- JSP magic code -->
	<%
	int num1, num2;
	int result = 0;
	String errorMessage = "";
	String action = "";
	
	if(request.getParameter("operator") !=null){
		try{
			if(request.getParameter("arg1").equals("") || request.getParameter("arg2").equals("")){
				errorMessage = "Voer een heel getal in, in beide velden!";
			} else if(request.getParameter("operator").equals("+")){
				action = "+";
				num1 = Integer.parseInt(request.getParameter("arg1"));
				num2 = Integer.parseInt(request.getParameter("arg2"));
				result = num1 + num2;
			} else if(request.getParameter("operator").equals("-")){
				action = "-";
				num1 = Integer.parseInt(request.getParameter("arg1"));
				num2 = Integer.parseInt(request.getParameter("arg2"));
				result = num1 - num2;
			} 	else if(request.getParameter("operator").equals("x")){
				action = "*";
				num1 = Integer.parseInt(request.getParameter("arg1"));
				num2 = Integer.parseInt(request.getParameter("arg2"));
				result = num1 * num2;
			} else if(request.getParameter("operator").equals("/")){
				action = "/";
				num1 = Integer.parseInt(request.getParameter("arg1"));
				num2 = Integer.parseInt(request.getParameter("arg2"));
				result = num1 / num2;
			}
		} catch(NumberFormatException e){
			errorMessage = "Voer een heel getal in, in beide velden!";
		} finally{
			
		}
	
	}
	
	%>
	
	<!-- calculator -->
	<div>
		<form action="op13.jsp" method="get">
		<table class="shell">
		<tr>
			<th class="bar">Calculator</th>
		</tr>
		<tr>
			<td><input type=text name=arg1 value="<%=result%>" onfocus="if(this.value=='0') this.value='';"> </td>
			<td><input type=text name=arg2 value=""></td>
		</tr>
		<tr>
			<td><%=errorMessage%></td>
			<td><%=action%></td>
			<td><%=result%></td>
		</tr>
		<tr>
			<td><input type="submit" name="operator" value="+"></td>
			<td><input type="submit" name="operator" value="x"></td>
			<td><input type="submit" name="operator" value="-"></td>
			<td><input type="submit" name="operator" value="/"></td>
		</tr>
		</table>
	</form>
	
	</div>
	
	
	<br><br>
	<a href="http://localhost:8080/helloJSP/op12.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Next</a>	
	
</body>
</html>