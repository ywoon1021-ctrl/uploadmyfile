<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	String inter[] = request.getParameterValues("chk");
	String inter2 = " ";

	if (inter != null) {

		for (String ss : inter) {
			inter2 += ss + ", ";
		}
		inter2 = inter2.substring(0, inter2.length() - 2);
	} else {
		inter2 = "관심사 없음";
	}
	/* value값이 영어 였을 경우
	String kor = null;
	for (String ss : inter) {
	switch (ss) {
	case "soccer"
	kor += "축구" 
	break;
	case "basketball"
	kor += "농구" 
	break;
	case "badminton"
	kor += "배드민턴" 
	break;

	 } 
	}

	*/
	%>
	<h1>
		취미:
		<%=inter2%></h1>

	<hr>
	version2.

	<%
	Map<String, String> vals = new HashMap();
	vals.put("soccer", "축구");
	vals.put("basketball", "농구");
	vals.put("badminton", "배드민턴");
	for (String so : inter) {
		%>

	<h1><%=vals.get(so)%></h1>
	<% }%>



</body>
</html>