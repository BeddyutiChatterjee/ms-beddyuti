<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="allcss.jsp" %>

    <title>Admin-page</title>
</head>
<body>
    <%
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try{
            //loading the driver Class
            
            Class.forName("oracle.jdbc.OracleDriver");
            //DriverManager.regsiterDriver(new oracle.jdbc.OracleDriver());
            //getting the Connection
            conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","student","12345");
            st=conn.createStatement();
            
            String password1=request.getParameter("password");
            String email1=request.getParameter("email");

            rs=st.executeQuery("select pemail,ppassword from pharmacist");
            
            while(rs.next())
            {
               
                if(rs.getString(1).equals(email1))
                {
                    if(rs.getString(2).equals(password1))
                    {
                        out.println("login successful");
                       
                       
                    }
                    else{
                        out.println("wrong password");
                    }
                    break;
                }
            }


        }catch(ClassNotFoundException e){
                out.println(e.getMessage());
        }catch(SQLException e){
            out.println(e.getMessage());
        }
    %>
    
</body>
</html>