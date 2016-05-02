<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<html>
<body bgcolor ="white">
<center>
<h2>Hello World!</h2><br>
 <% String uname= request.getParameter("uname"); 
    String upass=request.getParameter("upass") ;
 
 Connection connection =null;
 Statement stmt1=null,stmt2=null;
 ResultSet rs1=null;
 int rs2;
try {
    String connectionURL = "jdbc:mysql://localhost/webb";
    Class.forName("com.mysql.jdbc.Driver");
	out.println("Connecting to database...");
    connection = DriverManager.getConnection(connectionURL, "root", "system");
	out.println("Creating statement...");
    stmt1 = connection.createStatement();
    String sql1,sql2;
   stmt2 = connection.createStatement();
  sql2= "INSERT into employee(UNAME,UPASS) values('"+uname+"','"+upass+"')";
out.println("after declaring sql2"+sql2);
    rs2 = stmt2.executeUpdate(sql2);
out.println("after rs2"+rs2);
	sql1= "SELECT * FROM employee";
    rs1 = stmt1.executeQuery(sql1);
out.println("Inserting records into the table...num-->"+uname+"--id-->"+upass);
	while(rs1.next()){
		out.println("inside while");
         //Retrieve by column name
         String Name  = rs1.getString("UNAME");
         String Pass = rs1.getString("UPASS");
         //Display values
         out.print("Username: " + Name);
         out.print(", Password: " + Pass);
         
		 }
		  rs1.close();
		  
          stmt1.close();
		  stmt2.close();
    connection.close();
}
catch(Exception ex){
    out.println("Unable to connect to database.");
}

%>
</html>