<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>대한민국 만세</h1>
	<form>
		<div>
			<input name="st_name" placeholder="이름을 입력하세요">
		</div>
		<div>${result}님 반갑습니다</div>
	</form>
	<div>
		<a href="?st_name=효선">효선 </a>
	</div>
	<div>
		<a href="?st_name=지선">지선 </a>
	</div>
	<div>
		<a href="?st_name=민섭">민섭 </a>
	</div>
	<div>
		<a href="?st_name=영일">영일 </a>
	</div>


</body>
</html>