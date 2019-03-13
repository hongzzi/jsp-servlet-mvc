package Controll;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Blog;
import Model.Service;


@WebServlet("/ReviewList")
public class ReviewList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ReviewList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Service service = new Service();
		String address = null;
		
		ArrayList<Blog> reviewList = service.getAllBlogInfo();
		if(reviewList!=null) {
			session.setAttribute("reviewList", reviewList);
			address="/SEProject2/jsp/template_reviewList.jsp"; // 경로설정 다시 해야함
		}else if(reviewList==null) {	
		}
		response.sendRedirect(address);
	}

}
