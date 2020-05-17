<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <% request.setCharacterEncoding("utf-8");%>
  
 <title>게시글 보기</title>

    <h2>게시글 보기</h2>
<%
String type = request.getParameter("type");

String title = request.getParameter("title");
String date = request.getParameter("date");
String content = request.getParameter("content");
%>
<table border="1">
<tr>
	<td width="100" style="background:pink; text-align:center;"> 카테고리 </td>
	<td width="500"> <%=type %> </td>
</tr>
    <tr>
	<td width="50" style="background:pink; text-align:center;"> 제목 </td>
	<td width="500"> <%=title %> </td>
</tr>
    <tr>
	<td width="50" style="background:pink; text-align:center;"> 날짜 </td>
	<td width="500"> <%=date %> </td>
</tr>

    <tr>
	<td width="50" style="background:pink; text-align:center;"> 내용 </td>
	<td width="500" height="500"> <%=content %> </td>
</tr>
</tr>
    <tr style="background:pink; text-align:center;">
	<input type="submit" value="Back" style="background:pink; text-align:center;"><input type="submit" value="수정" style="background:pink; text-align:center;"><input type="submit" value="삭제" style="background:pink; text-align:center;">
</tr>

    </table>
</head>
<body>

</body>
</html>