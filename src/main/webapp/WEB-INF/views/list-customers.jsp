<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>crm</title>
<link href="<c:url value="/resources/style/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/style/style1.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body background="<c:url value="/resources/images/back2.jpg"/>"/>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>CRM - Customer Relationship Manager</h2>
			<hr color="pink" size="3" />
<img class="img1" src="<c:url value="/resources/images/niitLogo.png"/>"/>
			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" />
				<br/><br/>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Customer List</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>First Name</th>
							<th>Password</th>
							<th>Email</th>
							<th>Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${customers}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<tr bgcolor="pink">
								<td>${tempCustomer.firstName}</td>
								<td>${tempCustomer.password}</td>
								<td>${tempCustomer.email}</td>

								<td>
									<!-- display the update link --> 
									<a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>

</html>
