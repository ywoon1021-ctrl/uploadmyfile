package com.yw.test;

import javax.servlet.http.HttpServletRequest;

public class Modle {


    public static void view(HttpServletRequest request) {
        //1. 값 받기
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String gender =  request.getParameter("gender");
    String [] habit = request.getParameterValues("habit");


    Bean b =new Bean();
    b.setName(name);
    b.setAge(age);
    b.setGender(gender);

    System.out.println(name);
    System.out.println(age);
    System.out.println(gender);
    String habit2 = "";
    for (String h : habit) {
        System.out.println(h);
        habit2 += h + " / ";
    } // 배열 풀어내서 스트링으로 받아줌

        // 결과 에서 뭘쓸지?
        // 뭉쳐서 보내자 (객체)


    Bean b1 =new Bean(name,age,gender,habit2); // 오버로딩 생성자로 받아줌

    request.setAttribute("bean",b1);
    }




}
