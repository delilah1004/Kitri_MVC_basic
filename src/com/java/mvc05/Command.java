package com.java.mvc05;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	//요청에 대해서 FrontCnt(Servlet)에서 직접 처리하지 않고 해당 클래스가 처리하도록 한다.
	
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}
