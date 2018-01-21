<%@page import="com.javaex.dao.GuestbookDao"%>
<%@page import="com.javaex.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name"); //폼에서 약속한 변수이름의 값을 받아옴.
	String password=request.getParameter("pass");
	String content=request.getParameter("content");
	
	GuestbookVo vo=new GuestbookVo(1,name,password,content,"");
	
	GuestbookDao dao=new GuestbookDao();
	
	dao.insert(vo);
	
	response.sendRedirect("list.jsp");
%>