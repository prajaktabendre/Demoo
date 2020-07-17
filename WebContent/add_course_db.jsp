<%@page import="java.sql.*" %>

<%
try
{
	String course_name=request.getParameter("course_name");
	String course_link= request.getParameter("course_link");
	String username=session.getAttribute("username").toString();
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demom","root","root");
	   
	PreparedStatement st=con.prepareStatement("insert into courses(course_name,course_link,facilator_username) values(?,?,?)");
	st.setString(1, course_name);
	st.setString(2, course_link);
	st.setString(3,username);
	
	st.executeUpdate();

	%>
	<script>
	alert("Your course is added successfully...")
	</script>
	<%
}
catch(Exception e)
{
	e.printStackTrace();
}
%>