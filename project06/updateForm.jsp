<%@page import="oracle.net.aso.i"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
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

<title>변경</title>
</head>
<body>
<h2>DB에 로그인 데이터 변경</h2>

<form action="updatePro.jsp">
	ID : <input type="text" class="form-contorl" name="id" value="<%=id%>"> <br>
	SUBJECT : <input type="text" class="form-contorl" name="subject"> <br>
	CONTENT : <input type="text" class="form-contorl" name="content"> <br>
	WRITER : <input type="text" class="form-contorl" name="writer"> <br>
	REGDAATE : <input type="text" class="form-contorl" name="regdate"> <br>
		
	<input type="submit" class="btn btn-secondary" value="변경">
	<input type="button" class="btn btn-secondary" value="삭제" onclick="location.href='delete.jsp?id=<%=id%>'">
	<input type="reset" class="btn btn-secondary" name="재설정">

</form>
</body>
</html>