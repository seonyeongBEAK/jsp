<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">

    <jsp:useBean id="student_el" class="project05.el.Student_EL" scope="page"/>
    <jsp:setProperty property="*" name="student_el"/>
    
<title>학생정보</title>
</head>
<body>

 ${pageScope.student_el.num}
<p>학번 : ${student_el.num}</p>

 ${pageScope.student_el.name}
<p>이름 : ${student_el.name}</p>

 ${pageScope.student_el.grade}
<p>학년 : ${student_el.grade}</p>

 ${pageScope.student_el.subject}
<p>선택과목 : ${student_el.subject}</p>


</body>
</html>
