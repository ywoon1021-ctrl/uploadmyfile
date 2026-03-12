<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
    justify-content:center;
    align-items:center;
    background:#f2f4f7;
    font-family:Arial, sans-serif;
}

.result-box{
    background:white;
    padding:40px;
    border-radius:12px;
    box-shadow:0 8px 20px rgba(0,0,0,0.1);
    width:320px;
    text-align:center;
}

h1{
    margin-bottom:25px;
    color:#333;
}

h3{
    text-align:left;
    font-weight:normal;
    margin:12px 0;
    line-height:1.6;
    color:#444;
}

.items{
    text-align:center;
    margin-top:20px;
}

#img{
    width:200px;
    border-radius:10px;
    margin-top:10px;
}

button{
    width:100%;
    padding:12px;
    margin-top:25px;
    border:none;
    border-radius:6px;
    background:#4CAF50;
    color:white;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#43a047;
}
</style>
</head>
<body>



<%

String path =request.getServletContext().getRealPath("uploadFlie");
System.out.println(path);

MultipartRequest mr = new MultipartRequest(request, path,
		1024* 1024*20, "utf-8", new DefaultFileRenamePolicy()
		);

String n = mr.getParameter("name");


double l = Double.parseDouble(mr.getParameter("length"));
double w = Double.parseDouble(mr.getParameter("weight"));
double val = 0;
String result = null;

String imgF = mr.getFilesystemName("imgFile");


/*저체중: 18.5 미만
정상: 18.5 이상 ~ 23 미만
과체중: 23 이상 ~ 25 미만
비만: 25 이상 (경도 25~30, 중정도 30~35, 고도 35 이상)*/


// bmi 계산법 bmi = w/(l*l)

val = w/((l/100)*(l/100));

if(val < 18.5){
	result = "저체중";
}else if(val <= 18.5 ){
	result = "정상";
}else if (val <= 23){
	result = "과체중";
}else if (val <= 25){
	result ="경도 비만";
}else if (val <= 30){
	result =" 중도 비만";
}else if (val <= 35){
	result ="고도 비만";
}else{
	result ="not human";
}


%>
<div class="result-box">
<h1>BMI 결과</h1>
<h3>이름 <br>
<%= n%>

</h3>
<h3>키 (CM)<br>
<%= l%>

</h3>
<h3>체중 (KG)<br>
<%= w%>
</h3>
<h3>BMI <br>
<%=String.format("%.1f", val)%>
</h3>
<h3>결과 <br>
<%= result%>
</h3>

<h3>
 <div class = "items first">


<img id = "img" style ="width: 200px " src ="uploadFlie/<%= imgF %>">

</div>
</h3>


<button onclick="location.href='bmi.html'"> 다시하기</button>

</div>
</body>
</html>