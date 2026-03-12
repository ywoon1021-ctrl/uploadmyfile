package com.yw.test;

import lombok.SneakyThrows;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {


    @SneakyThrows
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 한글 인코딩 (안써도 되던데 왜인지는 모르겠다)
        request.setCharacterEncoding("UTF-8");
        // 비즈니스 로직 (계산)
        Modle.view(request);
        //어디로 보낼지
    request.getRequestDispatcher("output.jsp").forward(request,response);

    }

    public void destroy() {
    }
}