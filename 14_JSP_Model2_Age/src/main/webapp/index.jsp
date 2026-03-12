<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<%--
사용자가 출생년도를 입력하면 결과애 따라 나이가 묯살인지 알려주기
ex) 2004 -> 23살
00년생 이시군요, 당신의 나이는 00살입니다.

-bean 으로 값 뭉치기 (객체)
- 내년에도 소스코드 수정 안하기

--%>

<form action="hello-servlet">
    <input type="text" placeholder="출생년도" name="birth" />
    <button>나이 확인</button>


</form>

</body>

</html>