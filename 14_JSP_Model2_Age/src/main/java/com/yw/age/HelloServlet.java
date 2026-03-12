package com.yw.age;

import lombok.SneakyThrows;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    @SneakyThrows
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    Model.clacAge(request);
        request.getRequestDispatcher("output.jsp").forward(request,response);

        }

    public void destroy() {
    }
}