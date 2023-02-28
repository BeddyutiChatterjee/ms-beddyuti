<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin_page</title>
    <%@include file="allcss.jsp" %>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <div style=" background: rgba(0, 0, 0, 0.7) url('back.png');
background-size: cover;
background-blend-mode: darken;
height:120vh;">
    <h1>this is the admin page from where admin can do his work</h1>
    <br><br><br><br><br>
    <h2><a href="add_admin.jsp">update admin here</a><br>
    <a href="add_doctor.jsp">update doctor here</a><br>
    <a href="add_pharmacist.jsp">update pharmacist here</a><br>
    <a href="add_receptionist.jsp">update receptionist here</a></h2>
   
</body>
</html>