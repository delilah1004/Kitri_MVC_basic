package com.java.mvc07;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.mvc06.FrontController;

// @WebServlet("/AnnotationCnt")
// @WebServlet("/aaa/bbb/ccc")
@WebServlet("*.doit")
public class AnnotationEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public AnnotationEx01() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FrontController.logger.info(FrontController.logMsg + "doGet");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}