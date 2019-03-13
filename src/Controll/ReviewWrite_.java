package Controll;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Blog;
import Model.Service;
import Model.User;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ReviewWrite_
 */
@WebServlet("/ReviewWrite_")
public class ReviewWrite_ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewWrite_() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Service service = new Service();
		String address = null;
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		
		Blog review = new Blog();
		
		
		
		
		String path= request.getServletContext().getRealPath("BlogImg");
		
		
		int size = 1024*1024*10;
		MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8",new DefaultFileRenamePolicy());
		//?젅??寃쎈줈 C:\Users\LEE\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebService\144210\ADupload
		review.setImg(multi.getFilesystemName("filename"));
		System.out.println("scroe"+multi.getParameter("score"));
		review.setNick(user.getName());
		review.setTitle(multi.getParameter("title"));
		review.setContent(multi.getParameter("contents"));
		review.setScore(Integer.parseInt(multi.getParameter("score")));
		review.setBlogscore(0);
		review.setBook(multi.getParameter("search"));
		//수정중review.setRegdate(request.getParameter("regdate"));
		//review.setNo_book(Integer.parseInt(request.getParameter("no_book")));
		
		service.addBlog(review);
		address="/SEProject/jsp/template_reviewList.jsp";// 寃쎈줈�꽕�젙 �떎�떆 �빐�빞�븿
		
		response.sendRedirect(address);
	}

}
