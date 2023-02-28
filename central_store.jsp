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
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Central-Store</p>
						
					
						
						<form action="central_storeAction.jsp" method="post">
							
						<div class="mb-3">
								<label class="form-label">Catagory</label> <input required
									name="catagory" type="text" class="form-control">
						 </div>
						 <div class="mb-3">
								<label class="form-label">Item-Name</label> <input required
									name="item" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Import-date</label> <input required
									name="importdate" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Dealer</label> <input required
									name="dealer" type="text" class="form-control">
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