<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, Model.*"%>
<jsp:useBean id="dao" class="Model.Service"/>

<%
	ArrayList<CategoryForBook> list = dao.getAllCateory();
	//System.out.println("list"+list.size());
	for(int i =0; i<list.size()-1; i++){
		dao.getAllCategory_(i+1, list.get(i));
		//System.out.println(list.get(i).getCtitle()[0]);
		
	}
	

		  	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="/SEProject/css/template.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="/SEProject/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/SEProject/js/templateCenterLeft.js"></script>
<body>
	<div class="category">
		<ul>
		 <% 
		 		

		 for(int i=0; i<list.size()-1; i++){
		  			if(i==2 || i==10 || i == 12 || i == 16 || i==19 || i== 24){%>
		  			<li><br></li>
		  			<%} %>
			  		<li class="grey" id="g<%=i%>">
			  		<%=list.get(i).getTitle()%>
			  		</li>
			  			
			  		<div class="panel" id="p<%=i%>">
			  			<ul>
			  			<%for(int j=0; j<list.get(i).getCtitle().length; j++){ 
			  			%>
			  				<li>
					  		<%=list.get(i).getCtitle()[j] %>
					  		</li>
			  			
			  			
			  			<%} %>
			  			</ul>
			  		</div>
			  			
		  <% }%>
		  </ul>
		
		</div>
	

</body>
</html>