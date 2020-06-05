<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
    
    <jsp:useBean id="student" class="project05.bean.Student">
    <jsp:setProperty name="student" property="*"/>
    </jsp:useBean>
 <h2>학생정보</h2>
<table border="1">
	<tr>
		<td width="100">학번</td>
		<td width="100">
   		 <jsp:getProperty name="student" property="num"/>
		</td>
		
	</tr>
	<tr>
		<td width="100">이름</td>
		<td width="100">
   		 <jsp:getProperty name="student" property="name"/>
		</td>
		
	</tr>
	<tr>
		<td width="100">학년</td>
		<td width="100">
   		 <jsp:getProperty name="student" property="grade"/>
		</td>
	</tr>
	<tr>
		<td width="100">선택과목</td>
		<td width="100">
   		 <jsp:getProperty name="student" property="subject"/>
		</td>
	</tr>
</table>