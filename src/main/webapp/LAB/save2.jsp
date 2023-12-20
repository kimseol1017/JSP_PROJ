<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import = "java.sql.*, java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

 <%
   
   String na = request.getParameter("name");
   String ag = request.getParameter("age");
   String we = request.getParameter("weight");
   String add = request.getParameter("addr");
   String ph = request.getParameter("phone");
 %>
 
 <%@ include file ="../DB_CONN/db_conn_oracle.jsp" %>
 
 <%
 
 	String sql = null;
 PreparedStatement pstmt = null;
 
 sql = "insert into mem (name, age, weight, addr, phone)";
 sql = sql + " values (?,?,?,?,?)";
 
 out.println(sql);
 pstmt = conn.prepareStatement(sql);
 
 pstmt.setString(1,na); //1번째 ? 에 데이터 삽입
 pstmt.setString(2,ag);
 pstmt.setString(3,we);
 pstmt.setString(4,add);
 pstmt.setString(5,ph);
 
 try{
	 pstmt.executeUpdate();
	 
 }catch (Exception e){
	 
	 e.printStackTrace();
		out.println("DB저장에 실패했습니다");
 }
 
 
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>