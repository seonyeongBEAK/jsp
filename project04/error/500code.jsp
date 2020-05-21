<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% response.setStatus(HttpServletResponse.SC_OK);%>  <!--  현재 페이지가 정상 응답되는 페이지임을 지정하는 코드 -->	
    <!-- 에러 404,500 페이지에서 필수 입력  -->
   
    <% response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);%>  <!-- SC_INTERNAL_SERVER_ERROR : 500코드의 상태상수  -->

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>500 에러</title>
</head>
<body>
	페이지에 에러가 있습니다.<br>
	확인 바랍니다.<br>
	<hr>
	<img src="https://image.shutterstock.com/image-vector/website-error-500-internal-server-600w-571762600.jpg">
</body>
</html>