<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	String title = request.getParameter("title");
	ArrayList<Book> list = (ArrayList<Book>)session.getAttribute("search_list");
	
	for(int i=0; i<list.size(); i++){
		if(list.get(i).getTitle().equals(title)){
			session.setAttribute("search_detail", list.get(i))	;
			out.write(1+"");
			break;
		}
	}
	

%>
