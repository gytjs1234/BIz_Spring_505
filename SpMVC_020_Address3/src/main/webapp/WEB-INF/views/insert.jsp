<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<script>
	// js 파일에서 rootPath 을 
	// 사용할수 있도록 미리 JS 변수로 선언
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/insert.js?ver=2022-07-20-003"></script>
<form  class="insert" method="POST">
	<input name="a_seq" type="hidden"value='<c:out value="${ADDR.a_seq}" default="0"/>' /> 
	<input class="b_name" name="a_name" placeholder="이름" value="${ADDR.a_name}" />
	
	 <input  class="b_tel" name="a_tel" placeholder="전화번호" value="${ADDR.a_tel}" /> 
	 
	 <input  class="b_addr" name="a_address" placeholder="주소" value="${ADDR.a_address}" />
	 
	<button class="sub">저장</button>
</form>