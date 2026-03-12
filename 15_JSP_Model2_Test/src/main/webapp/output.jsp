<%@ page import="com.yw.test.Bean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Bean bb= (Bean) request.getAttribute("bean");
%>
<div>
    <h1>회원 정보 확인</h1>
   <h3> 이름 :  <%=bb.getName() %></h3>
    <h3>나이 :  <%=bb.getAge() %></h3>
    <h3>성별 :  <%=bb.getGender() %></h3>
    <h3>관심사 : <%=bb.getHabit() %></h3>
</div>


</body>
</html>
