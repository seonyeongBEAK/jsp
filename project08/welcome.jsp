<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    String id = "";
    Cookie[] cookie = request.getCookies();
    
    if(cookie!=null || !cookie.equals("")){
    	for(int i=0; i<cookie.length; i++){
    		if(cookie[i].getName().equals("id"))
    		id = cookie[i].getValue();	
    	}
    }else
    	response.sendRedirect("loginForm.jsp");
    %>
<body>
	반갑습니다! <%=id %>님이 로그인하셨습니다. 반갑습니다.<br>
	<br><br>
	<input type="button" onclick="location.href='logout.jsp'" value="로그아웃 ">
</body>
</html>