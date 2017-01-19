<%@ page import="com.helloJSP.Auto" %>
<%@ page import="com.helloJSP.AutoLijst" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>JSP opdrachten</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a class="arrow" href="http://localhost:8080/helloJSP/op15.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/zero.jsp">&rarr;</a>
	<h1>Opdracht: Auto-Winkel Selectie</h1>
	<%	
	AutoLijst a = new AutoLijst();
	out.println(a.pri());
	//out.println(a.getLijst());
	//out.println(a.getMerken());
	
	
	
	%>
	
	<% for(Auto cc : a.getLijst()) { %>
		Model: <%= cc.getMerk() %> <%= cc.getType() %><br>
		Prijs: <%= cc.getPrijs() %><br>
		<%= cc.getFoto() %><br><br>
		
	<% } %>
	
	<c:forEach items="${autolijst}" var="a">
 			<c:out value="${a.getMerk}" />
  			<c:out value="${a.getType}" /> 		
	</c:forEach>


	<br><br>
	<a href="http://localhost:8080/helloJSP/op15.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/zero.jsp">Next</a>	
</body>
</html>