<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8");%>

<title>과제 02</title>

</html>

    <%
    String dept = request.getParameter("dept");
    String name = request.getParameter("name");
    String addr = request.getParameter("addr");
    String startDate = request.getParameter("startDate");
    String Education = request.getParameter("Education");
    String certificate = request.getParameter("certificate");
    String content = request.getParameter("content");
    %>
    
    <h2>사용자 입력 확인</h2>
    <table border="1">
    <tr>
    	<td width="150"> 소속 </td>
    	<td width="500"> <%=dept %> </td>
    </tr>
        <tr>
    	<td width="150"> 성명 </td>
    	<td width="500"> <%=name %> </td>
    </tr>
        <tr>
    	<td width="150"> 현주소 </td>
    	<td width="500"> <%=addr %> </td>
    </tr>
 
        <tr>
    	<td width="150"> 입사년월일 </td>
    	<td width="500"> <%=startDate %> </td>
    </tr>
    
        <tr>
    	<td width="150"> 학력 </td>
    	<td width="500"> <%=Education %> </td>
    </tr>
         <tr>
    	<td width="150"> 자격증 </td>
    	<td width="500"> <%=certificate %> </td>
    </tr>
          <tr>
    	<td width="150"> 상담내용 </td>
    	<td width="500"> <%=content %> </td>
    </tr>
    
    </table>
</head>
<body>

</body>
</html>