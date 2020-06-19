<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="container">
<br>
	<h1 class="text-center font-weight-bold">사용자 입력 폼</h1>
<br>
	
	<form action="insertPro.jsp">
	<div class="form-group">
	<label for="id">ID : </label>
	<input type="text" class="form-contorl" name="id"><br>
	</div>
	<div class="form-group">
	<label for="subject">SUBJECT : </label>
	<input type="text" class="form-contorl" name="subject"><br>
	</div>
	
	<div class="form-group">
	<label for="content">CONTENT : </label>
	<input type="text" class="form-contorl" name="content"><br>
	</div>
	
	<div class="form-group">
	<label for="writer">WRITER : </label>
	<input type="text" class="form-contorl" name="writer"><br>
	</div>
	
	<div class="form-group">
	<label for="regdate">REGDATE : </label>
	<input type="text" class="form-contorl" name="regdate"><br>
	</div>
	
	<div class="text-center">
	<button type="submit" class="btn btn-secondary">입력완료</button>
	<input type="reset" class="btn btn-secondary" name="다시작성">
	</div>
	</form>
	
	</div>
</body>
</html>