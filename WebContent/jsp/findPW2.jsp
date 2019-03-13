<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="Controll.*" %>
<jsp:useBean id="dao" class="Model.Service"/>
<%
String ID = request.getParameter("ID");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
try{
	if(ID.equals("")||phone.equals("")||email.equals("")){
		out.write("1");
	}else if(!ID.equals("")&&!phone.equals("")&&!email.equals("")){
		boolean bl = dao.findPW(ID, phone, email);
		if(bl==false){
			out.write("2");
		}else if(bl==true){
			Email sendEmail = new Email();
			String auth = sendEmail.RandomNum();
			if(sendEmail.sendEmail_pw(email,auth)){
				dao.updatePW(ID,auth); //DB에 바뀐 비밀번호 저장
				out.write(auth+"");
			}else if(!sendEmail.sendEmail_pw(email,auth)){
				out.write("3");
			}	
		}	
	}
}catch(Exception e){
		System.out.println(e.toString());
		e.printStackTrace();
}
%>