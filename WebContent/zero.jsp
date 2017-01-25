<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zero DAY</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<a class="menu" href="http://localhost:8080/helloJSP/auto.jsp">&larr;</a>
	<a class="menu" href="http://localhost:8080/helloJSP/op01.jsp">&rarr;</a>
	<p>Yoo!<br>
	Welcome to APO!<br>
	the current time and date is: <%=new java.util.Date() %> </p><br><br><br>
	
	<br><br>
	<a href="http://localhost:8080/helloJSP/auto.jsp">Previous</a>
	<a href="http://localhost:8080/helloJSP/op01.jsp">Next</a>
</body>
</html>