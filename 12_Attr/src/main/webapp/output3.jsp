<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


p : <%= request.getParameter("p") %> <br>
m : <%= request.getParameter("p") %> <br>
rr : <%= request.getAttribute("rr") %> <br>
<hr>


<%= request.getParameter("howmuch")%>원 부족!!
<hr>
<%= request.getParameter("asd") %>원 부족해요~
<hr>
<%= request.getAttribute("asdasd") %>
</body>
</html>

