<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.bit.MyOracle,java.sql.*,java.util.ArrayList" %>
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
		<td width="200">
			<td width="200">
			<%if(session.getAttribute("loginResult")==null){ %>
				<a href="../join/login.jsp">[�α���]</a>/
				<a href="../join/add.jsp">[ȸ������]</a>
			<%}else{ %>	
				<a href="../join/logout.jsp">[�α׾ƿ�]</a>
			<%} %>
			</td>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="../index.jsp">[HOME]</a>
			<a href="../intro.jsp">[INTRO]</a>
			<a href="list.jsp">[B B S]</a>
			<a href="../guest/list.jsp">[GUEST]</a>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<h1>���� �Ͻðڽ��ϱ�?</h1>
			<form action="delete.jsp" method="post">
				<input type="hidden" name="num" value="<%=request.getParameter("num")%>">
				<input type="submit" value="�� ��">
			</form>
			</center>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center" bgcolor="gray" height="50">
		Copyright &copy; ��Ʈķ�� All rights reserved
		</td>
	</tr>
</table>
</body>
</html>






