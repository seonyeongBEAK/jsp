<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹브라우저에 저장된 쿠키 가져오기</title>
</head>
<body>
	<h3>쿠키 보기</h3>
	
	<%
	//1. 사용자 컴퓨터에 저장된 쿠키 배열 가져오기
	Cookie[] cookies = request.getCookies();
	
	//2. 쿠키 배열이 null이 아니면 쿠키에서 "id" 속성이 있는지 확인하여 화면에 쿠키 속성명과 속성값을 출력.
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
%>				
		쿠키의 속성명 : <%=cookies[i].getName() %> <br>
		쿠키의 값 : <%=cookies[i].getValue() %>
	<%		
			}
		}
	}
	
	%>
</body>
</html>