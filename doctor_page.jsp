<%@ page import="java.sql.*"%>
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

    <%
if(session.getAttribute("opdAlert")!=null)
{
	out.println(session.getAttribute("opdAlert"));
	session.removeAttribute("opdAlert");
}
%>
    <div style=" background: rgba(0, 0, 0, 0.7) url('back.png');
background-size: cover;
background-blend-mode: darken;
height:120vh;">
    <h1 style="font-family:fantasy;color:bisque;">this is the doctor page from where doctor can do his work</h1>
    <br><br><br><br><br>
    <h2><a href="opd_presc.jsp">outdoor patient prescription</a><br>
    <a href="ipd_presc.jsp">indoor patient prscription</a><br><br><br>
    <h2 style="font-family:fantasy;color:bisque;padding-left: 42%;">OUTDOOR-PATIENT TABLE</h2><br><br>
  <table style="color:bisque;">
     
    <tr>
        <th>REGISTRATION-NO</th>
        <th> PATIENT-ID</th>
        <th> NAME</th>
        <th>AGE</th>
        <th>GENDER</th>
        <th>CONTACT</th>
        <th>ADDRESS</th>
        <th>DOCTOR NAME</th>
        <th>APP_DATE</th>
    </tr>
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
        
        String dname=(String)session.getAttribute("doctor");

        rs=st.executeQuery("select * from opd_pat where odoc='"+dname+"'");

        while(rs.next())
        {
          %>
          <tr>
            <td><label><%=rs.getString(1)%></label></td>
            <td><label><%=rs.getString(2)%></label></td>
            <td><label><%=rs.getString(3)%></label></td>
            <td><label><%=rs.getString(4)%></label></td>
            <td><label><%=rs.getString(5)%></label></td>
            <td><label><%=rs.getString(6)%></label></td>
            <td><label><%=rs.getString(7)%></label></td>
            <td><label><%=rs.getString(8)%></label></td>
            <td><label><%=rs.getString(9)%></label></td>
            
        </tr>
        <%
        }

    }catch(ClassNotFoundException e){
            out.println(e.getMessage());
    }catch(SQLException e){
        out.println(e.getMessage());
    }
%>

    </table>

  <h2 style="font-family:fantasy;color:bisque;padding-left: 42%;">INDOOR-PATIENT TABLE</h2>
  <table style="color:bisque;padding-left: 20px;padding-right: 20px;">
    
  <tr> <th>REGISTRATION-NO</th>
    <th> PATIENT-ID</th>
    <th> NAME</th>
    <th>AGE</th>
    <th>GENDER</th>
    <th>CONTACT</th>
    <th>ADDRESS</th>
    <th>DOCTOR NAME</th>
    <th>APP_DATE</th>
    <th>ROOM-NO</th></tr>
    <%
    try{
      //loading the driver Class
      
      Class.forName("oracle.jdbc.OracleDriver");
      //DriverManager.regsiterDriver(new oracle.jdbc.OracleDriver());
      //getting the Connection
      conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","student","12345");
      st=conn.createStatement();
      
      String dname=(String)session.getAttribute("doctor");

      rs=st.executeQuery("select * from ipd_pat where idoc='"+dname+"'");

      while(rs.next())
      {
        %>
        <tr>
          <td><label><%=rs.getString(1)%></label></td>
          <td><label><%=rs.getString(2)%></label></td>
          <td><label><%=rs.getString(3)%></label></td>
          <td><label><%=rs.getString(4)%></label></td>
          <td><label><%=rs.getString(5)%></label></td>
          <td><label><%=rs.getString(6)%></label></td>
          <td><label><%=rs.getString(7)%></label></td>
          <td><label><%=rs.getString(8)%></label></td>
          <td><label><%=rs.getString(9)%></label></td>
          <td><label><%=rs.getString(10)%></label></td>
          
      </tr>
      <%
      }

  }catch(ClassNotFoundException e){
          out.println(e.getMessage());
  }catch(SQLException e){
      out.println(e.getMessage());
  }
%>

  </table>
   
</body>
</html>