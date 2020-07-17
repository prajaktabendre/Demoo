<%@page import="java.sql.*" %>
<% 
try
{
	String fname=request.getParameter("firstname");
	String lname=request.getParameter("lastname");
	String username =request.getParameter("username");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String role=request.getParameter("role");
	
	
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demom","root","root");
     
    PreparedStatement st=con.prepareStatement("insert into user(first_name,last_name,username,email,password,role) values(?,?,?,?,?,?)");
    st.setString(1,fname);
    st.setString(2,lname);
    st.setString(3,username);
    st.setString(4, email);
    st.setString(5, password);
    st.setString(6, role);
    
    st.executeUpdate();
    %>
    <script>
    alert("Registration sucessfully....Thank you for registration");
  
    window.location.href="index.jsp";
    </script>
    <%
  }
catch(Exception e)
{
e.printStackTrace();
}

%>