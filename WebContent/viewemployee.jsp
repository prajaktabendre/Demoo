<%@page import="java.sql.*" %>

<%
 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/demom","root","root");

PreparedStatement st=con.prepareStatement("select user_id, first_name,last_name,username,email from user where role='employee'");

 ResultSet rs=st.executeQuery();
 
 %>
 <html>
 <head>
 <title>Employee Details</title>

 </head>
 <body>
<table>
  <tr>
    <th>UserId</th>
    <th>FirstName</th>
    <th>LastName</th>
     <th>UserName</th>
      <th>Email</th>
   </tr>
  
  <% 
  while(rs.next())
  {
  %>
  <tr>
    <td><%=rs.getInt(1) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(5) %></td>
    <td></td>
  </tr>
 <% 
 }
  %>
  </table>
 </body>
 
 </html>
 
 <% 

  
%>
