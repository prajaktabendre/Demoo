
<!doctype html>
<title>Example</title>
<style>
#grid {
  display: grid;
  grid-template-rows: repeat(3, 1fr);
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 10px;
}
#grid > div {
  background-color: hotpink;
  color: white;
  font-size: 4vw;
  padding: 60px;
  width:50px;
  height:50px;
}
</style>
<%@page import="java.sql.*" %>
<%
try
{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demom","root","root");
	   PreparedStatement st=con.prepareStatement("select course_name,course_link,facilator_username from courses");
       ResultSet rs=st.executeQuery();
	%>
	<div id="grid">
	<%
	   while(rs.next())
	   {
	%>
    <a href="<%=rs.getString("course_link")%>"><img alt="" src="images/<%=rs.getString("course_name")%>.png" height="150px" width="150px" ></br><%=rs.getString("facilator_username")%></a>
   <% 
	   }
   %>
	    </div>
	<%    
}
catch(Exception e)
{
	e.printStackTrace();
}

%>

