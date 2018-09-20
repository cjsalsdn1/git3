
<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<%
	String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521/XE";

	String USERNAME = "scott";
	String PASSWORD = "tiger";

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h1>회원목록조회</h1>
<hr />
<form>
<table border="1">
	<td>회원아이디</td>
	<td>회원이름</td>
	<td>이메일</td>
	<td>연락처</td>
	</tr>
<%
try {
		Class.forName(JDBC_DRIVER);
		conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
		stmt = conn.createStatement();
		
		String sql = "select * from custom_01 order by p_id asc";
		rs = stmt.executeQuery(sql);

		while (rs.next()) {
			String p_id = rs.getString("p_id");
			String p_pw = rs.getString("p_pw");
			String c_name = rs.getString("c_name");
			String c_email = rs.getString("c_email");
			String c_tel = rs.getString("c_tel");
		
%>
	<tr>
		<td><%=p_id%></td>
		<td><%=c_name%></td>
		<td><%=c_email%></td>
		<td><%=c_tel%></td>
	</tr>
<% 
}
%>
</table>
</form>
<% 
stmt.close();
	rs.close();
	conn.close();	
	} catch (Exception ex) {
		ex.printStackTrace();

	} 
%>
<hr />
<b>HEDKOREA Copyrightⓒ 2015 All rights reserved. Human Resources Development Service of Korea</b>
</body>
</html>