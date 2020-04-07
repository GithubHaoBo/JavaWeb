package com.hob.po;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {

	private static final long serialVersionUID = -3587767749600008656L;
	
	public void service(HttpServletRequest request,HttpServletResponse response) {
		System.out.println("---");
	}

}
