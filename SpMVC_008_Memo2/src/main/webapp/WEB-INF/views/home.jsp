<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
th, td {
	border: 1px solid black;
	background-color: white;
	padding: 10px;
	text-align: center;
}

table {
	border-collapse: collapse;
	margin: 30px auto;
}

h1 {
	margin: 20px auto;
	text-align: center;
}

a {
	text-decoration: none;
	color: inherit;
	font-size: 20px;
	background-color: black;
	color: white;
	padding: 10px;
	box-shadow: 2px 2px 2px white;
	text-align: center;
}

a:hover {
	color: black;
	font-size: 20px;
	background-color: white;
}

td:hover {
	cursor: pointer;
}

body {
	background-color: pink;
}

.a {
	margin: 50px auto;
}



th {
	background-color: black;
	color: white;
}

table:hover {
	overflow: visible;
}
</style>
<script >
const rootPath ="${rootPath}"
</script>
<script src="${rootPath}/static/memo.js?20220627001">
</script>
</head>
<body>
	<h1>${USERNAME}의메모장</h1>
	<table class="memo">
		<tr>
			<th>SEQ</th>
			<th>작성일자</th>
			<th>작성시각</th>
			<th>할일</th>
		</tr>
		<c:if test="${empty MEMOS}">
			<tr>
				<td colspan="4">메모가 없습니다</td>
			</tr>
		</c:if>
		<c:forEach items="${MEMOS}" var="MEMO" varStatus="INDEX">
		
		<!-- 메모를 클릭했을때 detail화면으로 넘어가기위해서 -->
			<tr data-seq="${MEMO.m_seq}">
				<td>${INDEX.count}</td>
				<td>${MEMO.m_date}</td>
				<td>${MEMO.m_time}</td>
				<td>${MEMO.m_memo}</td>
			</tr>
		</c:forEach>

	</table>
	<a href="${rootPath}/memo/insert">메모작성하기</a>
	<c:if test="${empty USERNAME}">
		<a href="${rootPath}/user/login">로그인하기</a>
	</c:if>
	<c:if test="${not empty USERNAME}">
		<a href="${rootPath}/user/logout">로그아웃하기</a>
	</c:if>
</body>
</html>