<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>

<%
	Connection conn = null;
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/mydb";
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url,"root","1234");
//		out.println("<h1>DB접속 성공</h1>");
		
	}catch (Exception e){
		out.println("<h1>DB접속 실패</h1>");
		e.printStackTrace();

	}

%>   
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>