<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="100%">
<tr>
	<td><img src="../imgs/blue_logo.png"></td>
</tr>
<tr>
	<td bgcolor="gray" align="center">
		<a style="color:white" href="../">[HOME]</a>
		<a style="color:white" href="../intro.jsp">[INTRO]</a>
		<a style="color:white" href="./list.jsp">[B B S]</a>
		<a style="color:white" href="../login/form.jsp">[LOGIN]</a>
	</td>
</tr>
<tr>
	<td>
		<!-- content start -->
		<center>
		<h1>�Խ��� ����Ʈ</h1>
		<table border=1 cellspacing="0" width="85%">
			<tr>
				<th bgcolor="gray" width="80">�۹�ȣ</th>
				<th bgcolor="gray">����</th>
				<th bgcolor="gray" width="100">�۾���</th>
				<th bgcolor="gray" width="100">��¥</th>
			</tr>
<%@ page import="java.sql.*" %>
<%
String keyword=request.getParameter("word");
String colname=request.getParameter("key");
if(keyword==null) keyword="%";
if(colname==null) colname="sub";

String sql="select num,name,nalja,sub from bbs02 ";
sql+=" where "+colname+" like '%"+keyword;
sql+="%' order by num desc";


String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String password="tiger";
String driver="oracle.jdbc.driver.OracleDriver";

Class.forName(driver);

Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
try{
	conn=DriverManager.getConnection(url, user, password);
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	while(rs.next()){
%>
			<tr>
				<td><%=rs.getInt("num") %></td>
				<td><%=rs.getString("sub") %></td>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getDate("nalja") %></td>
			</tr>
<%
	}
}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
%>
		</table>
		<form action="list.jsp">
		<select name="key">
			<option value="sub">����</option>
			<option value="name">�۾���</option>
		</select>
		<input type="text" name="word">
		<input type="submit" value="�˻�">
		</form>
		</center>
		<!-- content end -->
	</td>
</tr>
<tr>
	<td bgcolor="gray" align="center">
<b>(��)��Ʈ��ǻ��</b><br>
	����Ư���� ���α� ���� 69 YMCA 7��<br>
Copyright &copy; ��Ʈķ�� All rights reserved.
	</td>
</tr>
</table>
</body>
</html>


















