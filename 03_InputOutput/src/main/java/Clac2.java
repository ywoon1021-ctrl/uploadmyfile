

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Clac2")
public class Clac2 extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		int xx = Integer.parseInt(request.getParameter("x"));
		int yy = Integer.parseInt(request.getParameter("y"));
		String[] op = request.getParameterValues("oper");
		
		System.out.println(xx);
		System.out.println(yy);
		
		
		
		// 브라우저에 뭘 쓰고 싶음 (html)
				response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				out.print("<html>");

				out.print("<head>");
				out.print("<meta charset=\"UTF-8\">");
				
				
				out.print("</head>");
				out.print("<body>");
	
				out.print("<div style=\"width : 500px; background-color: ivory; border: 2px solid;\">");
				
				for (String operator : op) {
					// a, b
					if (operator.equals("a")) {
						out.printf("<div>%d + %d =%d</div>", xx, yy , xx+yy);
						
					}else if (operator.equals("b")) {
						out.printf("<div>%d - %d =%d</div>", xx, yy , xx-yy);
						
					}else if (operator.equals("c")) {
						out.printf("<div>%d x %d =%d</div>", xx, yy , xx*yy);
						
					}else if (operator.equals("d")) {
						if (yy != 0 ) {
						double result = xx /(double)yy;
						DecimalFormat df = new DecimalFormat("#.##"); // 값이 정수일 경우 소수점 표기 안함
						String aaa = df.format(result);
						
						
						out.printf("<div>%d / %d= %s</div>",xx ,yy, aaa);
						}else {
							out.printf("<div>0으로 나누기 불가</div>");
							
						}
						
					}
				}
				
				
				
				
				out.print("</div>");
				
				
				out.print("</body>");
				out.print("</html>");
		
		
		
	}
	// get 요청은 url에 정보가 표시 됨
	// post 요청은 url에 정보가 표시 안됨
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
	
	}

}
