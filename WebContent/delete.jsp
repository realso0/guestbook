<%@page import="com.javaex.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int no = Integer.valueOf(request.getParameter("no"));
	String password=request.getParameter("password");

	GuestbookDao dao=new GuestbookDao();

	dao.delete(no, password);

	response.sendRedirect("list.jsp");
	
	
	
	
%>