package Controll;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Service;
import Model.User;

@WebServlet("/Join")
public class Join extends HttpServlet {
    public Join() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out;
		request.setCharacterEncoding("UTF-8");
		
		Service service = new Service();
		User user = new User();
		HttpSession session = request.getSession();
		String address = null;
		//System.out.println(request.getParameter("userGender"));
		user.setId(request.getParameter("userID"));
		user.setPw(request.getParameter("userPassword"));
		user.setName(request.getParameter("userName"));
		user.setNick(request.getParameter("nickName"));
		user.setPhone(request.getParameter("phone"));
		user.setEmail(request.getParameter("userEmail"));
		
		if(request.getParameter("userGender").equals("남자")){
			user.setGender(1);
		}else{
			user.setGender(0);
		}
		String favorite[] = request.getParameterValues("favorite");
		
		user.setFavorite(favorite);
		
		int rst = service.insertUser(user);
		
		
		if(rst == 1){

			session.setAttribute("member", user);
			address="/SEProject";// 寃쎈줈�꽕�젙 �떎�떆 �빐�빞�븿
			response.sendRedirect(address);
		}
		
		  
	}

}
