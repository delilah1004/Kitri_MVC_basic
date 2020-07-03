package com.java.mvc04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListAction {
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("message", "글목록");
		return "com.java.mvc04.ListAction";
	}
}
