<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
public int getmok (int a, int b){
	return a/b;}
%> <!-- %! %매서드 받아줌 -->

	<%
	// 1. 값 받기
	
	int x = Integer.parseInt(request.getParameter("xx"));
	int y = Integer.parseInt(request.getParameter("yy"));
	
	
	int hap = x + y;
	int cha = x - y;
	int gob = x * y;
	int mok = x / y;
	int mok2 = getmok(x,y);
	
	
	
	%><!-- % %자바 코드를 받는 공간 -->

<!-- 현재 상태중에거 총 합이 10이 넘을 때만 결과 화면 이 나오게 -->

<%
	if(hap > 10){
		
%>

<div style="background-color: ivory; boder: 1px solid;">

	<h1> <%= x %> + <%= y %> = <%= hap %> </h1>
	<h1> <%= x %> - <%= y %> = <%= cha %> </h1>
	<h1> <%= x %> x <%= y %> = <%= gob %> </h1>
	<h1> <%= x %> / <%= y %> = <%= mok %> </h1>
	<!-- %= %는 변수 받아줌 -->

	<h1> <%= mok2%>
	</h1>
	<h1><%= getmok(x,y) %>
	</h1>

</div>
<% } %>


</body>
</html>