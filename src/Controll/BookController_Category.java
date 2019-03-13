package Controll;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import Model.Book;

/**
 * Servlet implementation class BookController_Category
 */
@WebServlet("/BookController_Category")
public class BookController_Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private KaKaoBookService service;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookController_Category() {
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
		HttpSession session = request.getSession();
		service = new KaKaoBookService();
		
		String no = request.getParameter("no");
		System.out.println(no);
		
		ArrayList<Book> list = new ArrayList<Book>();
		
		
		String json  = service.getDetail(no);
		
		list = parse(json);
		
		//System.out.println(list.size());
		session.setAttribute("detail_list", list);
		//response.getWriter().print("suceess");
		
		JSONObject obj = new JSONObject();
		obj.put("result", "success");
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(obj);
		//response.sendRedirect("/SEProject/jsp/template_book_detail.jsp");
		
		
		
		
	}
	
	
	private ArrayList<Book> parse(String data) {
		ArrayList<Book> list = new ArrayList<Book>();
        try {
            JSONObject jsonObj = new JSONObject(data);
            JSONArray jsonArray = jsonObj.getJSONArray("documents");
           
           
            for (int i = 0; i < jsonArray.length(); i++) {
            	
            	Book book = new Book();
                JSONObject c = jsonArray.getJSONObject(i);
                
                book.setTitle(c.getString("title"));
                book.setLink(c.getString("url"));
                book.setImage(c.getString("thumbnail"));
                JSONArray authors = c.getJSONArray("authors");
                String author = "";
                for(int j=0; j<c.getJSONArray("authors").length(); j++){
                	author += c.getJSONArray("authors").get(j)+" ";
                }
                book.setAuthor(author);
                //System.out.println(c.getInt("price"));
                book.setPrice(Integer.toString(c.getInt("price")));
                book.setPublisher(c.getString("publisher"));
                book.setPubdate(c.getString("datetime"));
                JSONArray editors = c.getJSONArray("translators");
                String editor = "";
                for(int j=0; j<c.getJSONArray("translators").length(); j++){
                	editor += c.getJSONArray("translators").get(j)+" ";
                }
                book.setEditor(editor);
                book.setDescription(c.getString("contents"));
                book.setCategory(c.getString("category"));
                book.setISBN(c.getString("isbn"));
               
                list.add(book);
                
            }
               
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return list;
    }
        

}

