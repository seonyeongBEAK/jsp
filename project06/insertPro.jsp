<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	//연결정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";

	//1. 드라이브 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	//2. 연결 객체 생성
	Connection con = DriverManager.getConnection(url, user, passwd);

	//3. SQL 준비 및 실행
	String sql = "INSERT INTO BOARD VALUES(?, ?, ?, ?, ?)";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, request.getParameter("id"));
	pst.setString(2, request.getParameter("subject"));
	pst.setString(3, request.getParameter("content"));
	pst.setString(4, request.getParameter("writer"));
	pst.setString(5, request.getParameter("regdate"));

	//4. SQL 실행
	int i = pst.executeUpdate();
	
	//5. 객체 해지
	pst.close();
	con.close();
	
	response.sendRedirect("list.jsp");
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>사용자 입력</title>
</head>
<body>
입력완료!
</body>
</html>