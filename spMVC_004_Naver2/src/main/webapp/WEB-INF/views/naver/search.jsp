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
<style >
*{
margin: 0;
padding: 0;
}
form{
display: flex;
justify-content:space-around;
width: 60%;
margin: 10px auto;
}
select ,inpit{
padding: 8px;
margin: 5px;
}
input{
flex: 1;
}
header{
background-color: skyblue;
padding: 30px;
text-align: center;
}
table {
	margin: 40px auto;
	padding: 20px;
	
	
	
}
td,th{
padding: 20px;
}
</style>
</head>
<body>
<header>
<h2>네이버 도서검색</h2>
</header>
	<form method="post">
		<select name="cat">
			<option value="BOOK">도서검색</option>
			<option value="NEWS">뉴스검색</option>
			<option value="MOVIE">영화검색</option>
		</select> 
		<input name="search" placeholder="검색어를 입력하세요">
		<button>검색</button>
	</form>
	<table>
	<tr>
	<th>NO.</th><th>ISBN</th><th>도서명</th><th>출판사</th><th>저자</th><th>정가</th><th>출판일</th>
	</tr>
	<c:forEach items="" var="" >
	<tr>
	<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
	</tr>
	</c:forEach>
	</table>

</body>
</html>