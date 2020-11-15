<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "finalproject";
String userid = "nurzhanar";
String password = "nur";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{
String roll_no=request.getParameter("roll_no");
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select  from student where Username="+roll_no;
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
String city_name=resultSet.getString("city_name");
i++;
out.println(city_name);
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
