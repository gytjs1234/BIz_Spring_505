<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사관리</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	/*list의 머릿글이 안나타남*/
}

body {
	width: 100vw;
	height: 100vh;
	display: flex;
	flex-direction: column;
	/*고정시키는 화면을쓴다*/
}

section.main {
	flex: 1;
	padding: 5px;
	display: flex;
}

section.main article {
	flex: 1;
	margin: 0 5px;
	border: 1px solid black;
}

header {
	/* important 어떤 태그 속성보다 우선 강제적용*/
	background-color: pink !important;
	padding: 2rem;
	font-weight: 900;
	/*
	header tag에 속성을 지정하면 header가 감싸고 있는 tag들에게 속성이 상속되어 공통으로 적용된다.
	a tag에는 상속이안됨
	*/
	text-align: center;
	text-shadow: 3px 3px 2px black;
	color: white;
}

nav {
	background-color: hotpink;
	color: white;
}

nav ul {
	list-style: none;
	display: flex;
	padding: 12px 16px;
	margin-left: 10
}

nav li:hover {
	cursor: pointer;
	color: black;
	font-weight: 900;
}

nav li:nth-of-type(4) {
	margin-left: auto;
}

nav li {
	padding: 10px
}

/*
a tag 의 color 속성은 부모 tag의 color 속성을 상속받지 않는다
만약 a tag에 부모 속성을 상속 받고자 한다면 color:inherit 속성을 부여하면 된다.
*/
header a {
	color: inherit;
}

footer {
	background-color: black;
	color: white;
	text-align: center;
	padding: 0.9rem;
}
button{
	
	border: none;
	outline: none;
	padding: 12px 16px;
	border-radius: 5px;
	}
	botton:hover{
	box-shadow: 2px 2px 2px rgba(0,0,0,0.7);
	}
	button.btn-blue{
	background-color: blue;
	color: white;
	}
	button.btn-green{
	background-color: green;
	color: white;
	}
	button.btn-red{
	background-color: red;
	color: white;
	}
	button.btn-orange{
	background-color: orange;
	color: white;
	}
	
	article .st-list{
	overflow: auto;
	max-height: 10vh;
	}
</style>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/nav.js?ver=2022-05-10-001"></script>
</head>
<body>
	<header>
		<h1>학사관리 시스템</h1>
		<p>대한고교 학사관리 시스템 2022</p>
	</header>
	<nav>
		<ul>
			<li>HOME</li>
			<li>학생정보</li>
			<li>성적정보</li>
			<li>로그인</li>
			<li>회원가입</li>
		</ul>
	</nav>
	<section class="main">
		<c:choose>

			<c:when test="${LAYOUT== 'ST_LIST'}">
				<article class="st-list">
					<%@ include file="/WEB-INF/views/Student/list.jsp"%>
				</article>
			</c:when>
			<c:when test="${LAYOUT eq 'ST_INPUT'}">
				<article>
					<%@ include file="/WEB-INF/views/Student/Input.jsp"%>
				</article>
			</c:when>
			<c:otherwise>
				<article>
				<%@ include file="/WEB-INF/views/Student/list.jsp"%>
				</article>
				<article></article>
				<article></article>

			</c:otherwise>
		</c:choose>
	</section>


	<footer>
		<address>CopyRight &copy; dkvkxmdnal@naver.com</address>
	</footer>


</body>
</html>