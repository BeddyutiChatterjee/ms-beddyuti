<%@ page import="java.sql.*"%>
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
        String pid=request.getParameter("pid");
        String gender=request.getParameter("gender");
        String age=request.getParameter("age");
        String contact=request.getParameter("contact");
        String address=request.getParameter("address");
        String docname=request.getParameter("docname");
        String appdate=request.getParameter("appdate");
        String regno=request.getParameter("regno");

        

    
        if(name==null || regno==null || age==null || gender==null|| contact=="" || address=="" || pid==""  )
        {
            session.setAttribute("add_adminAction","fill all the text area");
            response.sendRedirect("add_admin.jsp");
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
                String query="insert into opd_pat values('"+regno+"','"+pid+"','"+name+"','"+age+"','"+gender+"','"+contact+"','"+address+"','"+docname+"','"+appdate+"')";
                
                st.executeQuery(query);

               session.setAttribute("opdAlert","1 patient added");
                response.sendRedirect("opd_app.jsp"); 
                
                

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