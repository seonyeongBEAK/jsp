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

<title>Insert</title>

</head>
<body>
<div class="container">
	<h2>로그인</h2>
	
	<form action="loginPro.jsp" method="post">
	<div class="form-group">
	아이디 : <input calss="form-control" type="text" name="id"><br>
	</div>
	<div class="form-group">
	암호 : <input calss="form-control" type="password" name="pwd"><br>
	</div>
	<input calss="btn btn-secondary" type="submit" value="로그인">
	<input calss="btn btn-secondary" type="reset" name="재작성">
	</form>
</div>
</body>
</html>

