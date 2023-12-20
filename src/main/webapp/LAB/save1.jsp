<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import = "java.sql.*,java.util.*" %>
   
   <% request.setCharacterEncoding("UTF-8"); %>
   
   <%
   
   String na = request.getParameter("name");
   String ag = request.getParameter("age");
   String we = request.getParameter("weight");
   String add = request.getParameter("addr");
   String ph = request.getParameter("phone");
   %>
   
  <%@ include file = "../DB_CONN/db_conn_oracle.jsp" %>
  
  <%
  	String sql = null;
  	Statement stmt = null;
  	
  	sql = "insert into mem (name, age, weight, addr, phone)";
  	sql = sql + " values ('" + na + "', '" + ag + "','" + we +"' , '" + add + "','" + ph + "')";
  	
  	out.println(sql);
  	stmt = conn.createStatement();
  	
  	try{
  		stmt.execute(sql);
  	}catch(Exception e){
  		
  		e.printStackTrace();
		out.println("DB저장에 실패했습니다");
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