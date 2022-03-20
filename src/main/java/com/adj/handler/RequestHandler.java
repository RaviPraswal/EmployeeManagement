package com.adj.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface RequestHandler {

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception ;
}
