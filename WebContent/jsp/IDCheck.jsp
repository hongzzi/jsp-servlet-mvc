<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<jsp:useBean id="dao" class="Model.Service"/>
<%
String email = request.getParameter("userid");
try{
	boolean isCheck = dao.emailCheck(email);
	if(email.equals("")){
		int result=2;
		out.write(result+"");
	}else if(email.length()<8){
		int result=3;
		out.write(result+"");
	}
	else{
		if(isCheck){
			int result=1;
			out.write(result+"");
		}else if(!isCheck){
			int result=0;
			out.write(result+"");
		}	
	}
}catch(Exception e){
		System.out.println(e.toString());
		e.printStackTrace();

}
%>