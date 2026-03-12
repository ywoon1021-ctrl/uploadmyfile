package com.yw.modle2;

import javax.servlet.http.HttpServletRequest;

// M (Model) - 비즈니스로직을 정리
// 계산, 일, DB
public class M {

	
	public static void calc(HttpServletRequest request) {
		// 1. 값 받기
		int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));
		
		int c= a+b;
	request.setAttribute("ccc", c); // c를  ccc 로 req에 
	}
	
	
	
}
