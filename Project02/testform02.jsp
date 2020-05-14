<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>

<title>과제 02</title>
</head>
<body>
<h2>개인면담 카드</h2>

	<form method="post" action="testpro02.jsp">
	<table border="1">
	<tr>
		<td width="100"> 소속  
		</td>
		<td width="500"> <input type="text" name="dept"> <br> </td>
	</tr>
	
	<tr>
		<td width="100"> 성명  </td>
		<td width="500"><input type="text" name="name"> <br> </td>
	</tr>
	
	<tr>
		<td width="100"> 현주소 </td>
		<td width="500"><input type="text" name="addr"> <br> </td>
	</tr>
	
		<tr>
		<td width="100"> 입사년월일 </td>
		<td width="500"><input type="text" name="startDate"> <br> </td>
	</tr>
	
	<tr>
		<td width="100"> 최종학력 </td>
		<td width="500"><input type="radio" name="Education" value="1" >중졸&nbsp;
		<input type="radio" name="Education" value="2" >고졸&nbsp;
		<input type="radio" name="Education" value="3" >전문대졸&nbsp; 
		<input type="radio" name="Education" value="4" >대졸&nbsp; <br> </td>
	</tr>

	<tr>

		<td width="100"> 자격증 </td>
		<td width="500">
		<input type="radio" name="certificate" value="1" >자동차2종&nbsp;
		<input type="radio" name="certificate" value="2" >정보처리산업기사&nbsp;
		<input type="radio" name="certificate" value="3" >컴퓨터활용&nbsp; 
		<input type="radio" name="certificate" value="4" >기타&nbsp; <br> </td>
		 </td>
	</tr>
	
	<tr>
		<td width="100" height="500"> 상담내용 </td>
		<td width="500" height="500"><input type="text" name="content"> <br> </td>
	</tr>
	<br>
	<input type="submit" value="입력완료">
		<input type="submit" value="다시입력">

	</table>
	
	</form>
</body>
</html>