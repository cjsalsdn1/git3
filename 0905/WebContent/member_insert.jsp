<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>회원 등록</h3>
<form action="member_insert2.jsp" method="post">
  <table border="2" >
    <tr>
      <td style="width:30%;">아이디</td>
      <td><input type="text" name="p_id" size="20" ></td>
     </tr>
     <tr>
      <td >비밀번호</td>
      <td><input type="text" name="p_pw" size="20"></td>
      </tr>
      <tr>
      <td>성명</td>
      <td><input type="text" name="c_name" size="20"></td>
      </tr>
      <tr>
      <td>이메일</td>
      <td><input type="text" name="c_email" size="25"></td>
      </tr>
      <tr>
      <td>연락처</td>
      <td><input type="text" name="c_tel" size="20"></td>
      <tr>
      <td><button type="submit">등록</button> <button type="button" onclick="location.href='./custom01_list.jsp'">조회</button></td>
      </tr>
  </table>
  <br>
</form>
<br>

</body>
</html>