package com.java.mvc06;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	public String proRequest(HttpServletRequest request, HttpServletResponse response);
}