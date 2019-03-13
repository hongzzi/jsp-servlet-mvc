package Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Service;
import Model.User;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userid = request.getParameter("userID");
		String userpw = request.getParameter("userPassword");
				
		Service service = new Service();
		String address = null;
	
		User user = service.getUserInfo(userid);
		
		if(user!=null) {
			if(userpw.equals(user.getPw())) {
				session.setAttribute("user", user);
				address="/SEProject";// 寃쎈줈�꽕�젙 �떎�떆 �빐�빞�
				if(user.getId().equals("admim"))
					address= "/SEProject/jsp/template_manager.jsp";
			}else {
				address="/SEProject/jsp/login.jsp";// 寃쎈줈�꽕�젙 �떎�떆 �빐�빞�븿
			}
		}else if(user==null) {
			address="/SEProject2/jsp/login.jsp";// 寃쎈줈�꽕�젙 �떎�떆 �빐�빞�븿
		}
		response.sendRedirect(address);
	}

}
