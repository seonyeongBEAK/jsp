<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	//연결정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	
	//1. 드라이브 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 연결 객체 생성
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3. SQL 준비 및 실행
	String sql = "SELECT*FROM BOARD";
	Statement st = con.createStatement();
	
	//4. 반환 객체
	ResultSet rs = st.executeQuery(sql);
	
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

<title>로그인 정보</title>

</head>
<body>
<div class="container">
<h1 class="text-center font-weight-bold">로그인 정보</h1>
<br><br>

	<table class="table table-hover">
		<tr>
			<th>ID</th>
			<th>SUBJECY</th>
			<th>CONTENT</th>
			<th>WRITER</th>
			<th>REGDATE</th>
		</tr>
	
<%
	while(rs.next()){
		String id = rs.getString("ID");
		String subject = rs.getString("SUBJECT");
		String content = rs.getString("CONTENT");
		String writer = rs.getString("WRITER");
		String regdate = rs.getString("REGDATE");

%>		
		<tr>
			<td><a href="updateForm.jsp?id=<%=id %>"><%=id %></td>
			<td><%=subject %></td>
			<td><%=content %></td>
			<td><%=writer %></td>
			<td><%=regdate %></td>
		</tr>
<%
	}
	
	//6. 객체 해지
	rs.close();
	st.close();
	con.close();
%>		
	
	</table>
	</div>
</body>
</html>