<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 값받기
String add = request.getParameter("selc");

%>


<h1>당신의 주소는 <%= add %>입니다.</h1>
</body>
</html>