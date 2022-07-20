<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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

body {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
}

header {
	background-color: rgb(242, 216, 155);
	color: white;
	text-align: center;
}

header h1 {
	font-weight: 900;
	text-shadow: 1px 1px 1px black;
	height: 20vh;
}

nav ul {
	display: flex;
	list-style: none;
	background-color: rgb(245, 181, 32);
	color: white;
}

nav li {
	padding: 12px 16px;
	margin: 1.5 rem;
}

html {
	width: 100vw;
	height: 100vh;
}

h1 {
	text-align: center;
	text-shadow: 1px 1px 1px black;
	line-height:10rem;
	border-bottom: 1px medium;
	padding: 
}

div {
	margin: 0 auto;
}

form {
	width: 50%;
	margin: 0 auto;
}
nav a{
color:  inherit;
text-decoration: none;
}

input {
	padding: 5px;
	width: 30%;
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
	color: white;
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
.main{
flex: 1}
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
	<tiles:insertAttribute name="header" />
	<section class="main">
	<tiles:insertAttribute name="body" />
	</section>
	<tiles:insertAttribute name="footer" />
</body>
</html>