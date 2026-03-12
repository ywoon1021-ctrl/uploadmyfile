<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
    margin:0;
    height:100vh;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    font-family: Arial, sans-serif;
}

h1{
    background:white;
    padding:15px 30px;
    border-radius:10px;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
    margin-bottom:20px;
}

h3{
    margin:5px 0;
    font-size:20px;
    font-weight:500;
}

h3:nth-of-type(2){
    font-size:24px;
    font-weight:bold;
}

button{
    margin-top:20px;
    padding:10px 20px;
    border:none;
    border-radius:6px;
    background:#333;
    cursor:pointer;
}

button a{
    text-decoration:none;
    color:white;
    font-weight:bold;
}

button:hover{
    background:#555;
}

body.length{
    background:linear-gradient(135deg,#a0d8ff,#e6f4ff);
}

body.area{
    background:linear-gradient(135deg,#c8f7c5,#f0fff0);
}

body.temperature{
    background:linear-gradient(135deg,#ffd6d6,#fff0f0);
}

body.speed{
    background:linear-gradient(135deg,#ffd6ec,#ffeaf5);
}
</style>

</head>
<body>

	<%
	//1. 값 

	double input = Double.parseDouble(request.getParameter("input"));
	String selc = request.getParameter("selc");
	double result = 0;
	String unnit1 = null;
	String unnit2 = null;

	if (selc.equals("length")) {
		result = input / 2.54;
		unnit1 = "cm";
		unnit2 = "inch";
	}

	else if (selc.equals("area")) {
		result = input * 0.3025;
		unnit1 = "㎡";
		unnit2 = "평";
	}
	else if (selc.equals("temperature")) {
		result = input * 9 / 5 + 32;
		unnit1 = "℃";
		unnit2 = "℉";
	}
	else if (selc.equals("speed")) {
		result = input / 0.6213;
		unnit1 = "km/h";
		unnit2 = "mi/h";
	}
	%>


<body class="<%=selc%>">


	<h1>변환 결과</h1>
	<br>
	<h3><%=input%><%=unnit1%></h3>
	<h3>↓</h3>
	<h3><%=String.format("%.1f", result)%><%=unnit2%></h3>
	<button> <!-- onclick 써라 -->
		<a href="unit.html">돌아가기</a>
	</button>
</body>
</html>






