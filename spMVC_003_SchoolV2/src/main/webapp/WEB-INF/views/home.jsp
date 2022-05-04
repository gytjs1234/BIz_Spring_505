<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set value="${rootpath}"  var="rootPath " />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/include_head.jsp" %>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
</head>
<body>
<%@ include file="/WEB-INF/views/include/include_header.jsp" %>
	<%@ include file="/WEB-INF/views/include/include_nav.jsp" %>
	<section>
		<article>처음화면</article>
	</section>
	<%@ include file="/WEB-INF/views/include/include_footer.jsp" %>

</body>
</html>