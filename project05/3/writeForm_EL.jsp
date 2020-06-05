<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈 과제 3</title>
</head>
<body>
<h2>글쓰기</h2>
<form method="post" action="writePro_EL.jsp">
   <table> <tr height="1" ></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td text-align="right">글목록</td>
        
     <tr height="1" ></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td>이름</td>
      <td><input name="name"></td>
      <td>&nbsp;</td>
     </tr>
      
     <tr height="1" ></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td>제목</td>
      <td><input name="title"></td>
      <td>&nbsp;</td>
     </tr>
       
     <tr height="1" ></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td>이메일</td>
      <td><input name="email"></td>
      <td>&nbsp;</td>
     </tr>
     
     <tr height="1"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td>내용</td>
      <td><textarea name="content" cols="50" rows="10"></textarea></td>
      <td>&nbsp;</td>
     </tr>  
     
      <tr height="1"></tr>
    <tr>
      <td>&nbsp;</td>
      <td>비밀번호</td>
      <td><input name="password"></td>
      <td>&nbsp;</td>
     </tr>
     
      <td colspan="3">
      <input type=submit value="글쓰기">
      <input type=button value="다시작성" OnCilck="WriteForm.jsp">
      <input type=button value="목록보기">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </form>
</body>
</html>