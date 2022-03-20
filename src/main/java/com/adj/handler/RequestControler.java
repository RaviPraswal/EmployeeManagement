package com.adj.handler;

import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestControler extends HttpServlet {

	Properties properties = new Properties();
	Class actionClassObj=null;

	public void init(ServletConfig config) {

		String propFilePath = config.getInitParameter("config-Prop");
		try {
			// properties.load(Thread.currentThread().getContextClassLoader().getResourceAsStream(propFilePath));
			// OR
			properties.load(RequestControler.class.getResourceAsStream(propFilePath));

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		String servletPath = request.getServletPath();
		try {
			// String[] actionName = servletPath.substring(1).split(".do");// works fine
			String[] actionName = servletPath.replace("/", "").split(".do");
			String actionClass = properties.getProperty(actionName[0]);
			actionClassObj = Class.forName(actionClass);
			RequestHandler handler = (RequestHandler) actionClassObj.newInstance();
			handler.doProcess(request, response);

		} catch (Exception e) {
			RequestHandler error = new ErrorHandler();
			try {
				error.doProcess(request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}

	}

}
