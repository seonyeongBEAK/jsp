<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
	//1. Context 객체 생성
	Context initCtx = new InitialContext();

	//2. DataSource 객체 생성
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/seonyeong");

	//3.CP에서 connection 가져오기
	Connection con = ds.getConnection();
	
	//3.생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "SELECT * FROM CUSTOMER";
		Statement st = con.createStatement();
		
		//4. SQL실행
		ResultSet rs = st.executeQuery(sql);
		
		
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 정보</title>
	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<h1 class="text-center font-weight-bold">회원정보</h1>
	<br><br>
	<table class = "table table-hover">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>휴대폰번호</th>
				<th>주소</th>
			</tr>	
<%
	//5. 결과집합 처리
	while(rs.next()) {
		String id = rs.getString("ID");
		String pwd = rs.getString("PWD");
		String name = rs.getString("NAME");
		String phone = rs.getString("PHONE");
		String addr = rs.getString("ADDRESS");
%>
			<tr>
				<td><%=id%></td>
				<td><%=pwd %></td>
				<td><%=name %></td>
				<td><%=phone %></td>
				<td><%=addr %></td>
			</tr>
<%} 
	//6.객체 해지
	rs.close();
	st.close();
	con.close();



%>
		</table>
		</div>
</body>
</html>