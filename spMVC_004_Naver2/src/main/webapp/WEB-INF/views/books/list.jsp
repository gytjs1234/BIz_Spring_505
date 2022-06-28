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
table {
	margin: 40px auto;
	padding: 20px;
}
td,th{
padding: 20px
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
<script src="${rootPath}/static/js/input.js?ver=2022-05-31-002"></script>
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
			
			
			<%//로그인 하지않았을때 %>
			<c:if test="${empty MEMBER}">
			<li><a href="${rootPath}/member/login">로그인</a></li>
			<li><a href="${rootPath}/member/join">회원가입</a></li>
			</c:if>
			
			<%//로그인 했을때는 MEMBER객체에 로그인한 사용자 정보가 담겨있다. %>
			<c:if test="${not empty MEMBER}"></c:if>
			<li><a href="${rootPath}/member/mypage">MY Page</a></li>
			<li><a href="${rootPath}/member/logout">Logout</a></li>
		</ul>
	</nav>
	<section class="main">
			<table  >
			<tr>
			<th>NO.</th><th>ISBN</th><th>도서명</th><th>출판사</th><th>저자</th><th>출판일자</th>
			</tr>
				<c:forEach items="${BOOK_LIST}"  var="BOOK">
			<tr>
			<td></td><td>${BOOK.isbn}</td>
			<td>${BOOK.title}</td>
			<td>${BOOK.publisher}</td>
			<td>${BOOK.author}</td>
			<td>${BOOK.pubdate}</td>
			</tr>
			</c:forEach>
			</table>
		<a href="${rootPath}/books/insert">도서정보추가</a>
	</section>
	<footer>
		<address>copyRihgt &copy; dkvkxmdnal@naver.com</address>
	</footer>

</body>
</html>
