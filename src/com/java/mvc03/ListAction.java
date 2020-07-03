package com.java.mvc03;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListAction {
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		// 글목록 작업 - DAO, DTO
		
		request.setAttribute("message", "글목록");
		return "/MVC/list.jsp";
	}
}
