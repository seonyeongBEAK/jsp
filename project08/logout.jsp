<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = "";
    Cookie[] cookie = request.getCookies();
    
    if(cookie != null || !cookie.equals("")){
    	for(int i=0; i<cookie.length; i++){
    		if(cookie[i].getName().equals("id"))
    			cookie[i].setMaxAge(0);
    			response.addCookie(cookie[i]);
    	}
    }
    %>
    
<script>
alert("로그아웃 되었습니다!");
location.href="loginForm.jsp";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>

</body>
</html>