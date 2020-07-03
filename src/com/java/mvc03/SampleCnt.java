package com.java.mvc03;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SampleCnt
 */
public class SampleCnt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SampleCnt() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("SampleCnt doGet Function");
		
		String cmd = request.getServletPath();
		System.out.println(cmd);
		
		String view = null;
		if(cmd.equals("/write.do")) {
			
			WriteAction write = new WriteAction();
			view = write.actionDo(request, response);	// Request Scope로 데이터 공유
			
		} else if(cmd.equals("/list.do")) {
			
			ListAction list = new ListAction();
			view = list.actionDo(request, response);	// Request Scope로 데이터 공유
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
