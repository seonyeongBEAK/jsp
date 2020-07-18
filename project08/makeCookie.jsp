<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
<%
	String cookieName = "id";

	//1. 쿠키 객체 생성
	Cookie cookie = new Cookie(cookieName, "seonyeong");
	
	//2. 쿠키 속성 설정
	cookie.setMaxAge(60*2);
	
	//3. 쿠키를 클라이언트에 전송
	response.addCookie(cookie);
%>

<%=cookieName %>가 생성되었습니다.<br>

<form action="useCookie.jsp" method="post">
	<input type="submit" value="생성된 쿠키 확인">
</form>
</body>
</html>