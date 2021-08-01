<html>
<head>
</head>
<body>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.util.*" %> 

<%
  String FirstName =request.getParameter("FirstName");
  String LastName =request.getParameter("LastName");
  String Age =request.getParameter("Age");
  String Email =request.getParameter("Email");
  String Phoneno =request.getParameter("Phoneno");
try{
String connectionURL = "jdbc:mysql://localhost:3306/database1"; 
 Connection conn =null;
Statement st =null;
ResultSet rs =null;
 Class.forName("com.mysql.jdbc.Driver").newInstance(); 
  conn = DriverManager.getConnection(connectionURL, "root", "Mysore14!");
  st =conn.createStatement();
String sql ="select * from registration";
 rs =st.executeQuery(sql);
while (rs.next())
{

out.println(" First Name :" + rs.getString("FirstName"));
out.println(" Last Name :" + rs.getString("LastName"));
out.println(" Age :" + rs.getString("Age"));
out.println(" Email :" + rs.getString("Email"));
out.println(" Phone no :" + rs.getString("Phoneno"));

}
}

catch(Exception e)
{
out.println(e);
}

%>
</body>
</html>