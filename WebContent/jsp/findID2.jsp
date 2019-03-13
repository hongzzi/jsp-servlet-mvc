<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<jsp:useBean id="dao" class="Model.Service"/>
<%
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
try{
	if(name.equals("")||phone.equals("")||email.equals("")){
		out.write("1");
	}else if(!name.equals("")&&!phone.equals("")&&!email.equals("")){
		String ID = dao.findID(name, phone, email);
		if(ID==null){
			ID = "";
			out.write(ID+"");
		}else if(ID!=null){
			out.write(ID+"");
		}	
	}
}catch(Exception e){
		System.out.println(e.toString());
		e.printStackTrace();
}
%>