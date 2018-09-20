<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
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
<% 

	String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521/XE";

	String USERNAME = "scott";
	String PASSWORD = "tiger";

	Class.forName(JDBC_DRIVER);
	Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
	Statement stmt = conn.createStatement();

	
	String p_id = request.getParameter("p_id");
	String p_pw = request.getParameter("p_pw");
	String c_name = request.getParameter("c_name");
	String c_email = request.getParameter("c_email");
	String c_tel = request.getParameter("c_tel");

	String sql= "insert into custom_01 (p_id, p_pw, c_name, c_email, c_tel)";
       sql += "values('"+p_id+"','"+p_pw+"','"+c_name+"','"+c_email+"','"+c_tel+"')";
       
	stmt.executeUpdate(sql);

%>

게시물 등록 완료<br><br>
<a href="member_insert.jsp">회원 정보 다시 등록</a>
</body>
</html>