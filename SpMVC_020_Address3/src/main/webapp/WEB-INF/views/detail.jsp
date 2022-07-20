<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Insert title here</title>
</head>
<style>
h1 {
	text-align: center;
}

.a {
	width: 500px;
	margin: 0 auto;
}

a {
	color: inherit;
	text-decoration: none;
	padding: 2px;
	margin: 0 auto;
}

a:hover {
	background-color: black;
	color: white;
	padding: 5px;
}

nav {
	box-shadow: 1px 1px 1px black;
}

body {
	background-color: rgb(255, 237, 175)
}

img {
	width: 30px
}

.detail {
	width: 300px;
	text-align: center;
	margin: 0 auto;
	background-color: white;
	box-shadow: 1px 1px 1px black;
	border-radius: 5px;
}

.link {
	width: 300px;
	margin: 0 auto;
}
</style>
<body>
	<h1>
		<img src="${rootPath}/static/image/phon.png">주소 상세 보기<img
			src="${rootPath}/static/image/phon.png">
	</h1>
	<div class="detail">

		<h3>이름 : ${ADDR.a_name}</h3>
		<h3>전화번호 : ${ADDR.a_tel}</h3>
		<h3>주소 : ${ADDR.a_address}</h3>
	</div>
	<br>
	<div class="link">
		<a href="${rootPath}/update?seq=${ADDR.a_seq}">수정하기</a> <a
			href="${rootPath}/delete?seq=${ADDR.a_seq}">삭제하기</a> <a
			href="${rootPath}/">처음으로</a>
	</div>


</body>
</html>