<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>
    <%
    	Connection conn = null ; //Connection 객체에 conn 변수를 null 로 초기화
    	String driver = "oracle.jdbc.driver.OracleDriver";
    	String url = "jdbc:oracle:thin:@localhost:1521:XE";
    
    	
		//예외설정 : 오류가 발생 되더라도 프로그램이 중지되지 안도록 설정
        
try {// try 블럭에서 오류가 있을 때 catch {} 이 작동 됨
	Class.forName(driver);  //driver를 로드
	conn = DriverManager.getConnection(url,"C##hr","1234");
//	out.println("DB 연결에 성공하였습니다.");
	
	// JSP에서 출력 하라
	
}catch( Exception e){
// try 블럭에 오류가 있을 때만 작동됨
	out.println("DB 연결에 실패하였습니다.");
	// 오류정보 콘솔에 출력
	e.printStackTrace();
		
}	
//		out.println("<br><br> ");
//		out.println("프로그램이 정상 작동됩니다. ");
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