package com.yw.attr;

import javax.servlet.http.HttpServletRequest;

import org.apache.coyote.Request;

public class Modle {

	public static void getexchange(HttpServletRequest request) {
		// 1. 값 받기
		int price = Integer.parseInt(request.getParameter("p")); 
		int money = Integer.parseInt(request.getParameter("m")); 
				
		//1000 5000 4000
		int ex = money - price;
		
		String say = "잔돈이요~";
		if (price == money) {
			say = "감사합니다~";
		}else if (price > money) {
			say = "돈 부족 한데...?";
			ex = price- money;//양수 처리
		}
		// 결과 페이지에서 뭘 쓸지??
		// 	price, money, ex, say
		
//	request.setAttribute("price", price);
//	request.setAttribute("money", money);
//	request.setAttribute("ex", ex);
//	request.setAttribute("say", say);
	// 위처럼 필요한 것들을 따로 실어서 보내도 되는데
	// 그걸 한데 뭉쳐서 보내자 (객체)
	Result r= new Result(price, money, ex, say);
 	request.setAttribute("rr", r); // rr은 객체
	
	
	}

	public static void makeValue(HttpServletRequest request) {
		 int asd = Integer.parseInt(request.getParameter("asd")) ;
		 asd *=-1; 	// 미완성 데이터 양수로 만들어 주기
		request.setAttribute("asdasd", asd);
		
	}
}






