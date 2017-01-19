<!DOCTYPE html>
<html>
	<body>
	<head>
		
		<title>helloJSP! JSP opdrachten</title>
		<link rel="stylesheet" type="text/css" href="design.css">
	</head>
	<%
	boolean show = false;
	String invoer="";
	double celsius = 0;
	double fahrenheit = 0;
	int result = 0;
	String foutBoodschap = "";
	String but = request.getParameter("button");
	
	if(request.getParameter("button") != null
			&& request.getParameter("textField") != null
			){
		invoer = request.getParameter("textField");
		try{
			//data(string) uit de textfield word omgezet naar een int - celsius
			celsius = Double.parseDouble(invoer);
			//convertie van celsius naar fahrenheit 
			fahrenheit = Math.round(celsius * 1.8 + 32);
			result = (int) fahrenheit;
			show = true;
			
		} catch(NumberFormatException e){
			foutBoodschap ="<p style=\"color:red \">voer een getal in, Klootzak! " + invoer + " is geen getal.</p>";
		}	 
	}
	%>
	<%if(show){ %>
	<a href="overview.jsp">
		<img src="images/ui/overview.png" alt="overview icon" style="width: 30px; height: 30px;"></a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op08.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op11.jsp">&rarr;</a>
	<h1>Opdracht 10: result page</h1>
	<p>hier onder staat het resultaat:</p>
	<p><%=celsius%> &#8451; is:&rarr; <%=result%> &#8457; </p>
	
	
	<%} %>
	
	<p><%=foutBoodschap%></p>
	
	<a href="http://localhost:8080/helloJSP/op10.jsp">Return</a>
	<br><br>
	<a href="http://localhost:8080/helloJSP/op08.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Next</a>
	</body>
</html>