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

<title>home</title>

</head>
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
html {
	width: 100vw;
	height: 100vh;
}

h1 {
	text-align: center;
	text-shadow: 1px 1px 1px black;
	padding-bottom: 50px;
	border-bottom: 1px medium;
}

div {
	margin: 0 auto;
}

form {
	width: 50%;
	margin: 0 auto;
}

input {
	padding: 5px;
	width: 400px;
	border: 2px solid black;
	margin-bottom: 20px;
	text-align: center;
	border-radius: 5px;
}



input:hover {
	background-color: rgb(242, 238, 216);
}

button {
	padding: 4 10px;
	margin-left: 300px;
	background-color: black;
	
}
.addr{
margin: 20px;
display: flex;
align-items: center; 
}
body {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
}


body {
	background-color: rgb(255, 237, 175);
}

img {
	width: 50px
}

.w3-container {
	width: 800px;
	text-align: center;
}

.add{
text-decoration: none;
border:1px solid black;
text-align: center;
line-height:30px;
padding: 2px;
border-radius: 3px;
background-color: black;
color: white;
margin-right: 50px;



}
.add:hover{
background-color: white;
color: black;
}
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
	
	<div class="addr" >
	
		<%//form 에 한개의 input box 만 있을경우 input box에 text 를 입력하고 Enter를 누르면
		//input box 담긴 문자열을 서버로 전송하는 기능이 활성화 된다.
		%>
		<form>
		<input name="search" placeholder="검색어 입력후 Enter..."/>
		</form>
	<a class="add" href="${rootPath}/insert">주소추가</a>
	
	</div>
	<br>
	<div class="w3-container">
	<table  class="w3-table w3-table-all" >
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
				
			</tr>
		</thead>
		<tbody>
			<c:set var="INDEX" value="1"></c:set>
			<c:forEach items="${ADDRS}" var="ADDR" varStatus="INDEX">

				<tr>
					<td><a href="${rootPath}/detail?seq=${ADDR.a_seq}">${INDEX.count}</a></td>
					<td><a href="${rootPath}/detail?seq=${ADDR.a_seq}">${ADDR.a_name}</a></td>
					<td>${ADDR.a_tel}</td>
					<td>${ADDR.a_address}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<%@ include file="/WEB-INF/views/pagination.jsp" %>
	</div>
</body>
</html>