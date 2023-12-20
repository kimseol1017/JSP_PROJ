<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.sql.*" %>
 
<%
	Connection conn = null;
 	String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQLServerDriver 대소문자 확인
 	String url = "jdbc:sqlserver://localhost:1433;DatabaseName=myDB; encrypt=false";
 		
 try{
 		Class.forName(driver);
 		conn = DriverManager.getConnection(url,"sa","1234");
// 		out.println("<b>DB연결 성공");
 			
}catch (Exception e){
 	out.println("DB연결 실패");
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