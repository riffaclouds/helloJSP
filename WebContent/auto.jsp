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
	<a class="menu" href="http://localhost:8080/helloJSP/op15.jsp">&larr;</a>
	<a class="menu" href="http://localhost:8080/helloJSP/op16.jsp">&rarr;</a>
	
	<h1>Opdracht: Auto-Winkel Selectie</h1>
	
	<%	
	AutoLijst a = new AutoLijst();
	
	//ik wil alleen the lucid car selecteren en printen
	//AutoLijst lucid = new AutoLijst();
	
	int minPrice = 0;
	int maxPrice = Integer.MAX_VALUE;
	String select = "Default";
	String errorMin = "";
	String errorMax = "";
	boolean show = false;
	
	if(request.getParameter("knop") != null){
		//kijk of er een getal is ingevoerd in minimumPrijs tekstvak
		try{
			if(!request.getParameter("minp").equals("")){
				minPrice = Integer.parseInt(request.getParameter("minp"));
			}else if(request.getParameter("minp").equals("")){
				minPrice = 0;
			}
			
		}catch(NumberFormatException e){
			errorMin = "minimumPrijs error";
		}
		//kijk of er een getal is ingevoerd in MaximumPrijs tekstvak
		try{
			if(!request.getParameter("maxp").equals("")){
				maxPrice = Integer.parseInt(request.getParameter("maxp"));
			}else if(request.getParameter("maxp").equals("")){
				maxPrice = Integer.MAX_VALUE;
			}
			
		}catch(NumberFormatException e){
			errorMin = "maximumPrijs error";
		}
		select = request.getParameter("selected");
		
	}
	
	//out.println(autolijst.get(2));

	%>
	
	<form action="auto.jsp" method="get">
		
		Kies merk:
			
		<select name="selected">
			<option value="<%=select%>"><%=select%></option>
			<option value="Default">Alle Fabrikanten</option>
			<!-- alle values van de merken(m) ophalen uit een arraylist, en toewijzen aan een option in een for loop -->
			<% for(String m : a.getMerken()) { %>
				<option value="<%=m%>"><%=m%></option>
			<%} %>
		</select>
		<br>
		
		<!-- bedrag is ingevuld bij minp(rijs) -->
		<%if(request.getParameter("knop") != null && !request.getParameter("minp").equals("")){ %>
			MinimumPrijs: <input type="text" name="minp" value="<%=minPrice%>">
		<!-- als het veld leeg is -->
		<%}else{ %> 
		MinimumPrijs: <input type="text" name="minp" value="">
		<%} %>
		<br>
		
		<%if(request.getParameter("knop") != null && !request.getParameter("maxp").equals("")){ %>
			MaximumPrijs: <input type="text" name="maxp" value="<%=maxPrice%>">
		<%}else{ %>
		MaximumPrijs: <input type="text" name="maxp" value="">
		<%} %>
		<br>
		<input type="submit" name="knop" value="OK"><br><br>
		
		<%if(request.getParameter("knop") != null){ %>
			<p  class="error"><%=errorMin%> <%=errorMax%> </p>
			<p>Filter: min: <%=minPrice%>  max: <%=maxPrice%></p>
			Fabrikant: <%=select %><br><br>
			
		<%}%>
		
		
		
		
		
		<!-- deze loop stelt een lijst samen -->
		<% for(Auto cc : a.getLijst()) { %>
				<!-- als de currentCar prijs hoger is dan minimum prijs en maximum prijs -->
				<%if(cc.getPrijs() > minPrice && cc.getPrijs() < maxPrice) { %>
					<!-- als er een merk is geselecteerd uit de dropdown menu -->
					<%if(cc.getMerk().equals(select)){ %>
					<div class=auto >
					<div class="bar"><%= cc.getMerk() %> <%= cc.getType() %></div>
				
						<img class="thumbnail" src="<%=cc.getFoto()%>" alt="car picture">
					
						<%if(cc.getPrijs() > 29999){ %>
							<p style="color: red;">Prijs: &euro; <%= cc.getPrijsFormat() %></p>					
						<%}else{ %>
							<p>Prijs: &euro; <%= cc.getPrijsFormat() %></p>
						<%} %>
						</div>
				<!-- of als merk op default staat, worden auto's van alle fabrikanten geprint -->							
				<%}else if(select.equals("Default")){%>
					<div class=auto >
					<div class="bar"><%= cc.getMerk() %> <%= cc.getType() %></div>
				
						<img class="thumbnail" src="<%=cc.getFoto()%>" alt="car picture">
						
						<!-- prijs word rood als het hoger is dan 29999 -->
						<%if(cc.getPrijs() > 29999){ %>
							<p style="color: red;">Prijs: &euro; <%= cc.getPrijsFormat() %></p>					
						<%}else{ %>
							<p>Prijs: &euro; <%= cc.getPrijsFormat() %></p>
						<%} %>
						</div>
				<%} %>
				
				<%}%>
			

					
					

				
		<% } %>
		<input type="hidden" name=minPrice value="<%=minPrice%>">
		<input type="hidden" name=maxPrice value="<%=maxPrice%>">
		
	</form>
	
	
	
	

	<br><br>
	<a href="http://localhost:8080/helloJSP/op15.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op16.jsp">Next</a>	
</body>
</html>