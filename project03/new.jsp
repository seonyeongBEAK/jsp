<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
게시글 작성 <br>
<form method="post" action="newtest.jsp">

카테고리 : <select name="type"> <br>
<option value="질문">질문</option>
<option value="질문">자유</option>
<option value="질문">문의</option>
<option value="질문">고민</option>
</select> <br>
제목 : <input type="text" name="title"> <br>
날짜 : <input type="text" name="date"> <br>
내용 : <input type="text" name="content"> <br>

<input type="submit" value="작성" style="background:pink; text-align:center;">

</form> 
</body>
</html>