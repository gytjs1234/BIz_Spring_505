<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>효선 페이지</title>
<script>
   const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/function.js?ver=7"></script>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html {
	width: 100vw;
	height: 100vh;
}

body {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

form {
	width: 50%;
	text-align: center;
}

input {
	padding: 1rem;
	width: 100%;
}
img{
width: 100px;
}
</style>
</head>
<body>
	<form method="POST" enctype="multipart/form-data">
		<input name="m_seq" type="hidden"
			value='<c:out value="${MEMO.m_seq}" default="0"/>'> <input
			name="m_memo" placeholder="메모를 입력하세요" value="${MEMO.m_memo}">
	<input type="file" name="file" accept="images/*"
               value="${rootPath}/upload/${M_MEMO.m_image}"
         onchange="setThumbnail(event)" multiple/>
         <div class="img-box">
      <img src="${rootPath}/upload/${MEMO.m_up_image}"  class="img-img"
      alt="이미지를 등록하세요!"
      onerror="this.onerror=null;this.src='${rootPath}/static/images/gosim2.jpeg'">
      </div>
		<button>메모기록</button>
	</form>

</body>
</html>