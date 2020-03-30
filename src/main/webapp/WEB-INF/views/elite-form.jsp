 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Elite Customers Registration</title>
<link href="<c:url value="/resources/style/elite.css"/>"
 rel="stylesheet">
</head>
<body>
<div  class="form">
<h3>Elite Customers Registration</h3>
<form:form id="registrationform" action="saveECustomer" method="post" modelAttribute="ecustomer">



<p class="contact"><label for="fname">First Name</label></p>
<input id="fname" name="fname" placeholder="Enter first name" required tabindex="1" type="text">

<p class="contact"><label for="lname">Last Name</label></p>
<input id="lname" name="lname" placeholder="Enter last name" required tabindex="2" type="text">

<p class="contact"><label for="password">Enter a password</label></p>
<input type="password" id="password" name="password" required tabindex="3">

<label for="birthday">Birthday:</label>
<input type="date" id="dob" name="dob" tabindex="4">

<p class="contact"><label for="phone">Mobile phone</label></p>
<input id="phone" name="phoneNo" placeholder="phone number" required tabindex="5" type="tel"
pattern="[0-9]{10}"> 

<p class="street"><label for="street">Address</label></p>
<input id="street" name="street" placeholder="Street Address" required tabindex="6" type="text">

<select class="select-style city" name="city" tabindex="7">

            <option value="select">Select Your City</option>
            <option value="Bangalore">Bangalore</option>
            <option value="Chennai">Chennai</option>
            <option value="Delhi">Delhi</option>
             <option value="Kolkatta">Kolakatta</option>
              <option value="Mumbai">Mumbai</option>
            </select><br><br>

<p class="pincode"><label for="pincode">Pin Code</label></p>
<input id="pincode" name="pincode" placeholder="Enter Pin Code" required tabindex="8" type="text">
<br>
<input class="buttom" name="submit" id="submit" tabindex="9" value="Sign me up!" type="submit"> 
</form:form>
</div>
</body>
</html>