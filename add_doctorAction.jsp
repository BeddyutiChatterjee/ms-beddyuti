<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
    Connection conn = null;
    ResultSet result = null;
    Statement st = null;

        int flag=1;
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String gender=request.getParameter("Gender");
        String age=request.getParameter("age");
        String contact=request.getParameter("contact_no");
        String address=request.getParameter("Address");
        String password=request.getParameter("password");
        String Qualification=request.getParameter("Qualification");
        String Department=request.getParameter("Department");

    
        if(name==null || email==null || age==null || gender==null|| contact=="" || address=="" || password==""  )
        {
            session.setAttribute("add_doctorAction","fill all the text area");
            response.sendRedirect("add_doctor.jsp");
        }
        else
        {
            try{
                //getting the Connection

                Class.forName("oracle.jdbc.OracleDriver");

                //DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            
                conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "student", "12345");
               // session.setAttribute("adminActionAlert","hello");
                //response.sendRedirect("add_admin.jsp");

                st=conn.createStatement();
                String query="insert into doctor values('"+name+"','"+email+"','"+age+"','"+gender+"','"+contact+"','"+password+"','"+address+"','"+Qualification+"','"+Department+"')";
                
                st.executeQuery(query);

               session.setAttribute("doctorActionAlert","1 doctor added");
                response.sendRedirect("add_doctor.jsp"); 
                
                

            }catch(SQLException e){
                %>
                    <%= e.getMessage() %>
                <%
            }catch(ClassNotFoundException e){
                %>
                    <%= e.getMessage() %>
                <%
            }catch(Exception e)
            {
                %>
                    <%= e.getMessage() %>
                <%
            }
        }

    %>
    %>
</body>
</html>