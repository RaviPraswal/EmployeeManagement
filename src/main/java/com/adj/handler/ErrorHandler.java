package com.adj.handler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ErrorHandler implements RequestHandler {

	@Override
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RequestDispatcher dispatcher=request.getRequestDispatcher("error.jsp");
		dispatcher.forward(request, response);
		
	}

}
