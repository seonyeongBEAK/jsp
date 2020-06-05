<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">

    <jsp:useBean id="write_el" class="project05.el.Write_EL" scope="page"/>
    <jsp:setProperty property="*" name="write_el"/>
    
<title>글쓰기 EL</title>

 ${pageScope.write_el.name}
<p>이름 : ${write_el.num}</p>

 ${pageScope.write_el.title}
<p>제목 : ${write_el.name}</p>

 ${pageScope.write_el.email}
<p>이메일 : ${write_el.grade}</p>

 ${pageScope.write_el.content}
<p>내용 : ${write_el.subject}</p>
