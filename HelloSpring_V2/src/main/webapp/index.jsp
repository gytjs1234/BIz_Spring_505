<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String strName ="홍길동";
int intNum1=30;
int intNum2=40;
int intSum=intNum1+intNum2;



%>
<h1>안녕하세요<%=strName %>님</h1>
<h3><%=intNum1%>+<%=intNum2 %>=<%=intSum %></h3>
</body>
</html>