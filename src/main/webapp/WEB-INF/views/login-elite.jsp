     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Elite Login</title>
<link href="<c:url value="/resources/style/elite1.css"/>"
 rel="stylesheet">
</head>
<body>

<div class="form">

  <span href="#" class="button" id="toggle-login">Customer Relationship Management</span>

<div id="login">
  <div id="triangle"></div>
  <h1>Elite Customer Log in</h1>
 <form:form id="eloginform" action="loginECustomer" method="post" modelAttribute="euser">
    <input type="text" placeholder="Phone no" name="phoneNo"/>
    <input type="password" placeholder="Password" name="password" />
    <input type="submit" value="Log in" />
 </form:form>
</div>
  
</div>
<div style="color: red">${error}</div>
</body>
</html>