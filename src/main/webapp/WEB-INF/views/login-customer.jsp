<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | CRM</title>
<link href="<c:url value="/resources/style/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/style/style1.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body background="<c:url value="/resources/images/officebg.jpg"/>"/>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Login - CRM</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title"><div style="color: aqua">Add Customer</div></div>
				</div>
				<div class="panel-body">
					<form:form action="loginUser" cssClass="form-horizontal"
						method="post" modelAttribute="user">

						
						<div class="form-group">
							<label for="email" class="col-md-3 control-label">
							<div style="color:pink">Email</div></label>
							<div class="col-md-9">
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">
							<div style="color: pink">Password</div></label>
							<div class="col-md-9">
								<form:password path="password" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Login</form:button>
							</div>
						</div>

					</form:form>
					
				</div>
			</div>
		</div>
	</div>
	<div style="color: red">${error}</div>
</body>
</html>
