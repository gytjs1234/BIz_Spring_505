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
body {
	background-color: pink;
}

form.join {
	width: 60%;
	margin: 20px auto;
}

form.join fieldset {
	border: 2px solid black;
}

form div {
	display: flex;
	margin: 5px auto;
}

form input {
	flex: 1;
	padding: 8px;
}

button {
	background-color: white;
}

.warn {
	color: red;
	font-weight: 900;
	text-decoration: underline;
}

.ok {
	color: blue;
}
</style>
<script>
	//js파일에서 rootPath을 사용할수 있도록 미리 JS변수로 선언
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/join.js?ver=2022-05-27-013"></script>
</head>
<body>
	<form class="join" method="POST">
		<fieldset>
			<legend>회원가입</legend>
			<div>
				<input name="username" placeholder="USERNAME" autocomplete="off" />
				<button class="id-check" type="button">중복검사</button>
			</div>
			<div class="username"></div>
			<div>
				<input name="password" type="password"  placeholder="password" autocomplete="off">
			</div>
			<div>
				<input name="re_password"  placeholder="비밀번호 확인"type="password">
			</div>
			<div>
				<input name="name" placeholder="이름" />
			</div>
			<div>
				<input name="email" placeholder="이메일" />
			</div>
			<div>
				<button type="button" class="join">회원가입</button>
				<button type="reset">새로작성</button>
			</div>
		</fieldset>
	</form>
</body>
</html>