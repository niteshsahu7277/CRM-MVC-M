 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/style/style1.css" />"
 rel="stylesheet">
</head>
<body background="<c:url value="/resources/images/back3.jpg"/>"/>
<img class="img1" src="<c:url value="/resources/images/niitLogo.png"/>"/>
<h2 align="center">CRM - Customer Relationship Manager</h2>
			<hr color="pink" size="3" />
			
<c:url var="travelLink" value="/travel/travelForm">
	<c:param name="customerId" value="${usr.id}" />
</c:url>

<c:url var="leaveLink" value="/leave/leaveForm">
	<c:param name="customerId" value="${usr.id}" />
</c:url>

<div style="color: blue" align="center">
Welcome  Employee ID: ${usr.id} User: ${usr.email} </div>

<a href="${travelLink}">Travel</a><br> <br><br>
<a href="${leaveLink}">Travel</a>
</body>
</html>