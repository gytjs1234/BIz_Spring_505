<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="${rootPath}/favicon.ico" type="image/x-icon">
<style>
body {
	background-color: pink;
}

a {
	text-decoration: none;
	color: inherit;
}
</style>
</head>
<body>
	
	<h1>반갑습니다</h1>
	<c:if test="${empty USER}">
		<a href="${rootPath}/user/login">로그인 바로가기</a>
	</c:if>
	<c:if test="${not empty USER}">
		<p>${USER.name}님 반갑습니다</p>
		<a href="${rootPath}/user/login">로그아웃하기</a>
	</c:if>
</body>
</html>