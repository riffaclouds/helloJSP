<!DOCTYPE html>
<html>
	<body>
	<head>
		
		<title>helloJSP! JSP opdrachten</title>
	</head>
	<h1>Opdracht 10: result page</h1>
	
	<%
	
	String invoer="";
	int celsius = 0;
	String foutBoodschap = "";
	
	String but = request.getParameter("button");
	
	if(request.getParameter("button") != null
			&& request.getParameter("textField") != null
			){
		invoer = request.getParameter("textField");
		try{
			
			celsius = Integer.parseInt(invoer);
			
		} catch(NumberFormatException e){
			foutBoodschap ="<p style=\"color:red \">voer een getal in, Klootzak! " + invoer + " is geen getal.</p>";
		}
		 
	}
	
	
	
	%>
		
	
	<p>hieronder staat het resultaat:</p>
	
	<p><%=foutBoodschap%></p>
	
	
	
	
	
	<a href="http://localhost:8080/helloJSP/op10.jsp">Return</a>
	
	<br><br>
	<a href="http://localhost:8080/helloJSP/op08.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Next</a>
	</body>
</html>