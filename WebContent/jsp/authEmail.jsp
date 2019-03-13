<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Controll.*" %>
<%
String email = request.getParameter("userid");
if(!email.equals("")){
	if(!email.contains("@")){
		int result=2;
		out.write(result+"");
	}else if(email.contains("@")){
		Email sendEmail = new Email();
		String auth = sendEmail.RandomNum();
		if(sendEmail.sendEmail(email,auth)){
			out.write(auth+"");
		}else if(!sendEmail.sendEmail(email,auth)){
			out.write("");
		}	
	}
}else if(email.equals("")){
	int result=1;
	out.write(result+"");
}

%>