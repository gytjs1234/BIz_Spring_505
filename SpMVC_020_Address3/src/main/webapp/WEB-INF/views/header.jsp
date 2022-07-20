<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<header>
	<h1>
		<img src="${rootPath}/static/image/address1.png">MY 주소록<img
			src="${rootPath}/static/image/address1.png">
	</h1>
</header>
<nav>
	<ul>
		<li>HOME</li>
		<li><a href="${rootPath}/about">ABOUT</a></li>
		<li>JOIN</li>
		<li>LOGIN</li>
	</ul>
</nav>