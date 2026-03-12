<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h2{color : red}
</style>

</head>
<body>


<%
// 값받기

request.setCharacterEncoding("utf-8"); //post로 받을때 한국어로
String id = request.getParameter("id");
String pw = request.getParameter("pw");

String result = null;

if (id.equals("yw")){
	if (pw.equals("1004")){
		result = "로그인 성공";
	}else{
		result ="비번 오류";
	}
}else{
		result ="존재하지 않는 회원";
	}

%>


<h1>ID : <%= id %></h1>
<h1>PW : <%= pw %></h1>
<h2>PW : <%= result %></h2>


</body>
</html>