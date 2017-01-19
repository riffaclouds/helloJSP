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
	<a href="overview.jsp">
		<img src="images/ui/overview.png" alt="overview icon" style="width: 30px; height: 30px;"></a>
	<a class="arrow" href="http://localhost:8080/helloJSP/op15.jsp">&larr;</a>
	<a class="arrow" href="http://localhost:8080/helloJSP/zero.jsp">&rarr;</a>
	
	<h1>Opdracht: Auto-Winkel Selectie</h1>
	
	<%	AutoLijst a = new AutoLijst(); %>
	
	<% for(Auto cc : a.getLijst()) { %>
		<div class=auto >
			
				<div class="bar"><%= cc.getMerk() %> <%= cc.getType() %></div>
				
					<img class="thumbnail" src="<%=cc.getFoto()%>" alt="car picture">
					
					<%if(cc.getPrijs() > 29999){ %>
						<p style="color: red;">Prijs: &euro; <%= cc.getPrijs() %></p>					
					<%}else{ %>
						<p>Prijs: &euro; <%= cc.getPrijs() %></p>
					<%} %>
					
				
			
		
		</div>	
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