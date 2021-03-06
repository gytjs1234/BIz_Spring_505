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
<style >
header{padding: 2rem;
text-align: center;
}
nav{
background-color: black;
color: white;
}
nav ul{

list-style: none;
display: flex;
}
nav li:nth-of-type(4){
	margin-left:auto; 

}
nav li{
padding: 12px 1rem;
}
nav li:hover{
background-color: white;
color: black;
cursor: pointer;
}

</style>
<style>
body {
	background-color: pink;
}

a {
	text-decoration: none;
	color: inherit;
}
</style>
<script>
const rootPath ="${rootPath}"
</script>
<script src="${rootPath}/static/js/home.js?ver2022-05-30-001">

</script>
</head>
<body>
	<header>
		<h1>hyosun.net</h1>
	</header>
		<nav class="main_nav">
			<ul>
				<li>HOME</li>
				<li>공지사항</li>
				<li>자유게시판</li>

				<c:choose>
					<c:when test="${empty USER}">
						<li>로그인</li>
						<li>회원가입</li>
					</c:when>
					<c:otherwise>
				<li>로그아웃</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
</body>
</html>