<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC 5 - form handling | Java Guides</title>
<link href="<c:url value="/resources/style/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/style/style1.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<div style="color: blue" align="center">
<% String cid=request.getParameter("customerId"); %>
Welcome  Employee ID: ${usr.id} User: ${usr.email} </div>

	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">CRM - Travel Request Form</h2>
			<div class="panel panel-info">
				
				<div class="panel-body">
					<form:form action="saveTravel" cssClass="form-horizontal"
						method="post" modelAttribute="tuser">

						<!-- need to associate this data with customer id -->
						<form:hidden path="tid" />
							<div class="form-group">
							<label for="Employee Id" class="col-md-3 control-label">Customer Id</label>
							<div class="col-md-9">
								<form:input path="cid" value="${cid}"   cssClass="form-control" />
							</div>
						</div>

							<div class="form-group">
							<label for="fromdate" class="col-md-3 control-label">Travel Date From</label>
							<div class="col-md-9">
								<form:input type="date" path="fromdate" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="todate" class="col-md-3 control-label">Travel Date To</label>
							<div class="col-md-9">
								<form:input type="date" path="todate" cssClass="form-control" />
							</div>
						</div>
														
						<div class="form-group">
							<label for="traveltype" class="col-md-3 control-label">Travel Type</label>
							<div class="col-md-9">
							  <select class="form-control" name="traveltype">
      							<option>Personal</option>
     							 <option>Official</option>
          					</select>
 							 </div>
							</div>
						
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Submit</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>