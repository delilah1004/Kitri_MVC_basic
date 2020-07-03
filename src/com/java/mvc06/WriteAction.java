package com.java.mvc06;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteAction implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("message", "글쓰기");
		return "/MVC/write.jsp";
		
	}
}