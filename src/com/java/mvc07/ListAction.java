package com.java.mvc07;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListAction implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("message", "글목록");
		return "/MVC/list.jsp";
		
	}
}