<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- 
       request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    LoginDAO dbPro = new LoginDAO();
    int check = dbPro.checkUser(id, pwd);
    
    if(check == 1){
    	Cookie cookie = new Cookie("id", id);
    	cookie.setMaxAge(20*60);
    	response.addCookie(cookie);
    	response.sendRedirect("welcome.jsp?id="+id);
    } else if(check == 0){
   %>  -->
   
    <%

    	session.setAttribute("id","seonyeong@dit.ac.kr");
    	
    	String id = (String) session.getAttribute("id");
    	session.removeAttribute("id");
    	session.invalidate();
    	%>
    <script>
    alert("비번을 잘못 입력하였습니다. 다시 로그인 하시기 바랍니다.");
    location.href="loginForm.jsp";
    </script>
    <%} else{
    %>
        <script>
    alert("없는 사용자 입니다." "회원가입 화면으로 이동합니다.");
    location.href="../12/insertDB.jsp";
    </script>
    <%} %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>