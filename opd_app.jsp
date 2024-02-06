<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="allcss.jsp" %>
<style type="text/css">
 .paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
 </style>
<title>Outdoor-appointment</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<%
if(session.getAttribute("opdAlert")!=null)
{
	out.println(session.getAttribute("opdAlert"));
	session.removeAttribute("opdAlert");
}
%>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">OutDoor-Appointment-Registration</p>
						
					
						
						<form action="opd_appAction.jsp" method="post">
							<div class="mb-3">
								<label class="form-label">Patient id</label> <input required
									name="pid" type="text" class="form-control">
						 </div>
						<div class="mb-3">
								<label class="form-label">Registration no</label> <input required
									name="regno" type="text" class="form-control">
						 </div>
						 <div class="mb-3">
								<label class="form-label">Name</label> <input required
									name="name" type="text" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Age</label> <input required
									name="age" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Gender</label> <input required
									name="gender" type="text" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Appoint-date</label> <input required
									name="appdate" type="text" class="form-control">
							</div>
							
								<div class="mb-3">
								<label class="form-label">Doctor</label> <input required
									name="docname" type="text" class="form-control">
							</div>
								<div class="mb-3">
								<label class="form-label">Contact-no</label> <input required
									name="contact" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input required
									name="address" type="text" class="form-control">
							</div>
							
							<button type="submit" class="btn bg-success text-white col-md-12">Appoint</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>