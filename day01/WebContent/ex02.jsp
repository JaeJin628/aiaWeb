<%@ page language="java" %>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- html �ּ� -->
	<h1>jsp page test222</h1>
	
	<% //Date date=new Date();
	//System.out.println(date);
	//�ּ��ۼ�
	int a=1234;
	for(int i=0; i<5; i++){
	%>
	<p>���<%=a %></p>
	<%}
	
	%>
	<%!

	int a;
	class test{}
	%>
</body>
</html>















