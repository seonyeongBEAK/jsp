<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
    
    <jsp:useBean id="write" class="project05.bean.Write">
    <jsp:setProperty name="write" property="*"/>
    </jsp:useBean>
 <h2>글 내용</h2>
<table border="1">
	<tr>
		<td width="200">이름</td>
		<td width="200">
   		 <jsp:getProperty name="write" property="name"/>
		</td>
	</tr>
	<tr>
		<td width="200">제목</td>
		<td width="200">
   		 <jsp:getProperty name="write" property="title"/>
		</td>
	</tr>
	<tr>
		<td width="200">이메일</td>
		<td width="200">
   		 <jsp:getProperty name="write" property="email"/>
		</td>
	</tr>
	<tr>
		<td width="200">내용</td>
		<td width="200">
   		 <jsp:getProperty name="write" property="content"/>
		</td>
	</tr>
</table>