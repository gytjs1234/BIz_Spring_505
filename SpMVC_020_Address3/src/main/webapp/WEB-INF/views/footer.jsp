<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<style>
* {
	box-sizing: border-box;;
	margin: 0;
	padding: 0;
}

html {
	width: 100vw;
	height: 100vh;
}

body {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
}

footer {
	background-color: black;
	color: white;
	text-align: center;
}

address {
	margin: 5px;
}
</style>
<body>
	<footer>
		<address>CopRight &copy; hyosun.net</address>
	</footer>
</body>