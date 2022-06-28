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

<title>나의 API APP</title>
<style>
input {
	margin: 2px;
}

button {
	padding: 5px 20px;
	background-color: black;
	color: white;
	float: right;
	margin: 5px;
}

button:hover {
	background-color: white;
	color: black;
}

textarea {
	width: 100%;
	height: 6.25em;
	resize: none;
}
</style>

<link rel="stylesheet"
	href="${rootPath}/static/css/main.css?ver=2022-06-01-002">
<link rel="stylesheet"
	href="${rootPath}/static/css/home.css?ver=2022-06-01-003">
<link rel="stylesheet"
	href="${rootPath}/static/css/table.css?ver=2022-06-01-002">
<link rel="stylesheet"
	href="${rootPath}/static/css/modal.css?ver=2022-05-31-002">
<link rel="stylesheet"
	href="${rootPath}/static/css/input.css?ver=2022-05-31-002">
<script>
	const rootPath = '${rootPath}'
</script>
<script src="${rootPath}/static/js/save.js?ver=2022-06-3-001">
	
</script>
</head>
<body>
	<header>
		<h1>MY API</h1>
		<p>Naver API를 활용한 도서,뉴스,영화정보 서비스</p>
	</header>
	<nav>
		<ul>
			<li><a href="${rootPath}/">HOME</a></li>
			<li><a href="${rootPath}/books/list">도서정보</a></li>
			<li><a href="${rootPath}/news/list">오늘의 뉴스</a></li>
			<li><a href="${rootPath}/movies">영화정보</a></li>
			<li><a href="${rootPath}/naver">네이버 체험</a></li>


			<%
			//로그인 하지않았을때
			%>
			<c:if test="${empty MEMBER}">
				<li><a href="${rootPath}/member/login">로그인</a></li>
				<li><a href="${rootPath}/member/join">회원가입</a></li>
			</c:if>

			<%
			//로그인 했을때는 MEMBER객체에 로그인한 사용자 정보가 담겨있다.
			%>
			<c:if test="${not empty MEMBER}"></c:if>
			<li><a href="${rootPath}/member/mypage">MY Page</a></li>
			<li><a href="${rootPath}/member/logout">Logout</a></li>
		</ul>
	</nav>
	<form class="save" method="POST">
		<div>
			<input name="isbn" id="isbn" placeholder="ISBN"> <input
				name="title" id="title" placeholder="도서명">
		</div>
		<div>
			<input name="author" placeholder="저자"> <input
				name="publisher" placeholder="출판사"> <input name="pubdate"
				placeholder="출판일"> <input name="price" type="number"
				placeholder="가격">
		</div>
		<textarea rows="10"></textarea>
		<button class="btn_save" type="button">저장</button>
		<button type="button">새로작성</button>
		<button type="button">리스트보기</button>
	</form>