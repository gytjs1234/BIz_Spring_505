<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<style>
body {
	background-color: pink;
}

form {
	width: 90%;
	background-color: black;
	border-radius: 20px;
	border-color: 5px solid white;
	color: white;
	margin: 30px auto;
	padding: 10px;
}

h1 {
	text-align: center;
	margin-top: 20px;
	font-size: 30px;
}

form div {
	width: 80%;
	margin: 5px auto;
	display: flex;
}

form label, form input {
	padding: 8px;
}

form label {
	flex: 1;
	width: 30%;
	text-align: right;
	width: 30%;
}

form input {
	width: 65%;
	margin-left: 5px;
	flex: 3;
}

div {
	text-align: center;
}

form div:last-of-type {
justify-content:flex-end;
margin: 10px auto;
}
form div:first-of-type input{
flex: 2;
margin-right: 10px;
}
form div:first-of-type button{
flex: 1;
}

button {
	padding: 6px 15px;
	margin: 10px;
	
}
button:hover{
background-color: black;
color: white;
border:2px solid white;
}
</style>
<!-- 스크립트로 보내기위한 변수선언 -->
<script>
const rootPath="${rootPath}"
</script>
<script src="${rootPath}/static/js/std_input.js?ver=2022-05-10-007"></script>
<h1>**학생정보 등록**</h1>
<form method="POST">
	<div>
		<label>학번</label> <input type="text" name="st_num">
		<button type="button" class="btn-white std-num-check" >중복검사</button>
	</div>
	<div>
		<label>이름</label> <input type="text" name="st_name">
	</div>
	<div>
		<label>학과</label> <input type="text" name="st_dept">
	</div>
	<div>
		<label>학년</label> <input type="text" name="st_grade">
	</div>
	<div>
		<label>전화번호</label> <input type="text" name="st_tel">
	</div>
	<div>
		<label>주소</label> <input type="text" name="st_addr">
	</div>
	<div>
		<button type="button" class="btn-white std_save">저장</button>
	</div>





</form>





