<%@page import="java.sql.*" %>

  <%
  try
  {
   String username=request.getParameter("username");
   String password=request.getParameter("password");
   
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demom","root","root");
   
   PreparedStatement st=con.prepareStatement("select * from user where username=? and password=?");
   st.setString(1, username);
   st.setString(2, password);
   
   ResultSet rs=st.executeQuery();
   
   if(rs.next())
   {
	  String role=rs.getString("role");  
	  //String username=rs.getString("username");
	  session.setAttribute("username",username);

	   if(role.equals("facilator"))
	{
		response.sendRedirect("facilator.jsp");
	}
	  else
	{
		 response.sendRedirect("employee.jsp");
	}
   
  }
   else
   {
	   %>
	   <script>
	   alert("Login Failed....");
	   window.location.href="index.jsp";
	   
	   </script>
	   
	   <% 
   }
	   
   }
   
  catch(Exception e)
  {
	  e.printStackTrace();
  }
  
 %>
