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
<title>add_Admin</title>
</head>
<body>
<%@include file="navbar.jsp" %>

<%
if(session.getAttribute("adminActionAlert")!=null)
{
	out.println(session.getAttribute("adminActionAlert"));
	session.removeAttribute("adminActionAlert");
}
%>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Admin-Registration</p>
						
					
						
						<form action="add_adminAction.jsp" name="form1" method="post">
						<div class="mb-3">
								<label class="form-label">Name</label> <input required
									name="name" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input required
									name="age" type="text" class="form-control">
							</div>
								<div class="mb-3">
								<label class="form-label">Gender</label> <input required
									name="Gender" type="text" class="form-control">
							</div>
								<div class="mb-3">
								<label class="form-label">Contact-no</label> <input required
									name="contact_no" type="text" class="form-control">
							</div>
								<div class="mb-3">
								<label class="form-label">Address</label> <input required
									name="Address" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Signup</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>