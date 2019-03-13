<%@page import="java.util.ArrayList"%>
<%@page import="Model.*"%>
<%@page import="Model.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
  User user = (User)session.getAttribute("user");
 	Service service = new Service();
 	int rst = service.deleteUser(user.getId());
 	if(rst == 1){
		response.sendRedirect("/SEProject");
 	}
 	
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

