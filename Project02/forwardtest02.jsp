<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
        int page ;
 
        switch (page) {
        case 0:
            page = "http://www.oracle.com ";
            break;
        case 1:
            page = "http://apache.org";
            break;
        case 2:
            page = "http://eclipse.org";
            break;
    
        default:
            page = "";
            break;
        }
 
        out.println(page);
    %>
 
</body>
</html>