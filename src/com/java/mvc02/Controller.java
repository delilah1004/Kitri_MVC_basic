package com.java.mvc02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @날짜 : 2020. 6. 29.
 * @author: 이다은
 */

// FrontController Pattern : 사용자의 모든 요청을 단 하나의 서블릿에서 처리하는 형태
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Controller doGet Function");
		System.out.println(request.getServletPath());
		
		String cmd=request.getRequestURI().substring(request.getContextPath().length());
		System.out.println(cmd);
		// System.out.println(request.getRequestURI().replace(request.getContextPath(), ""));
		
		String view = null;
		
		if(cmd.equals("/write.kitri")) {
			// 클래스 Write w = new Write() --> DTO, DAO --> DB --> DTO, DAO --> Controller
			
			request.setAttribute("message", "글쓰기");
			view = "/MVC/write.jsp";
			
		} else if(cmd.equals("/list.kitri")) {
			// 클래스 List i = new List() --> DTO, DAO --> DB --> DTO, DAO --> Controller
			
			request.setAttribute("message", "글목록");
			view = "/MVC/list.jsp";
		}
		
		if(view!=null) {
			RequestDispatcher rd = request.getRequestDispatcher(view);
			rd.forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
