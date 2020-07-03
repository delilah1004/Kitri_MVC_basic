package com.java.mvc06;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final Logger logger = Logger.getLogger(FrontController.class.getName());	
	public static String logMsg = "logMsg ===== ";
	
	private HashMap<String, Object> commandMap = new HashMap<String, Object>();
	
    public FrontController() {
        super();
    }
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	
    	System.out.println("FrontController doGet Function");
    	
    	String configFile = config.getInitParameter("configFile");
    	logger.info(logMsg + configFile);
    	
    	String path = config.getServletContext().getRealPath(configFile);
    	logger.info(logMsg + path);
    	
    	FileInputStream fis = null;
    	BufferedInputStream bis = null;
    	Properties pro = new Properties();
    	
    	// properties 읽어오기
    	try {
    		
    		fis = new FileInputStream(path);
    		bis = new BufferedInputStream(fis, 1024);
    		pro.load(bis);
    		
    	} catch(IOException e) {
    		
    		e.printStackTrace();
    		
    	} finally {
    		
    		try {
    			
    			if(bis!=null) bis.close();
    			if(fis!=null) fis.close();
    			
    		} catch(IOException e) {
    			
    			e.printStackTrace();
    		}
    	}
    	
    	// 
    	Iterator<Object> keyIter = pro.keySet().iterator();
    	while(keyIter.hasNext()) {
    		String key = (String) keyIter.next();
    		String value = pro.getProperty(key);
    		logger.info(logMsg + key + "\t\t" + value);
    		
    		try {
    			
    			Class<?> handlerClass = Class.forName(value);	// value 값에 따라 호출하는 클래스가 달라지기 때문에 Class<?> 로 받는다.
    			Object handlerInstance  = handlerClass.getDeclaredConstructor().newInstance();
    			commandMap.put(key, handlerInstance);
    			
    		} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmd = request.getServletPath();
		logger.info(logMsg + cmd);
		
		String view = null;
		
		try {
			Command com = (Command) commandMap.get(cmd);
			view = com.proRequest(request, response);
			
		} catch (Throwable e) {
			
			e.printStackTrace();
		}
		
		if(view!=null) {
			RequestDispatcher rd = request.getRequestDispatcher(view);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}