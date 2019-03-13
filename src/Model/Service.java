package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.ResultSetMetaData;

import Controll.ConnUtil;
import Model.List;
import Model.User;

public class Service {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public int login(String userID, String userPassword) {
		
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		
		
		try{
			conn = ConnUtil.getConnection();
			
			ps = conn.prepareStatement(SQL);
			ps.setString(1, userID);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)){
					return 1; 
				}
				else
					return 0;
			}
			return -1; 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //�뜲�씠�꽣踰좎씠�뒪 �삤瑜�
	}
	
	public int insertUser(User user){
		int rst =0;
		String SQL = "INSERT INTO User VALUES (?, ?, ?, ?, ?,?,?,?)";
		try{
			conn = ConnUtil.getConnection();
			
			ps = conn.prepareStatement(SQL);
			ps.setString(1, user.getId());
			ps.setString(2, user.getPw());
			ps.setString(3, user.getName());
			ps.setString(4, user.getNick());
			ps.setString(5, user.getPhone());
			ps.setString(6, user.getEmail());
			ps.setString(7, user.getFavorite());
			ps.setInt(8, user.getGender());
		
			rst=  ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			ConnUtil.close(conn, ps, rs);
		}
		return rst;	
	}
	
	// 회원가입

	// 사용가능한 아이디 체크 유무
	public int availableCheck(String id){
			
		return -1;
	}
	
	// 로그인 체크
	// 아이디 존재유무, 비밀번호 일치 유무, 성공
	public int loginCheck(String id, String pw){
		
		
		return -1;
		
	}
	
	//아이디 찾기
	public String findId(String name, String identity){
		String id = null;
		
		return id;
		
	}
	
	//비밀번호 재설정
	public int resetPw(){
		
		return -1;
	}
	
	// 개인정보 가져오기
	public User getUserInfo(String userID) {
		String SQL = "select * from User where id=?";
		User user = new User();
		try {
			conn = ConnUtil.getConnection();
			ps = conn.prepareStatement(SQL);
			System.out.println(userID);
			ps.setString(1, userID);
			rs = ps.executeQuery();
			if(rs.next()){
				user.setId(rs.getString("id"));
				user.setName(rs.getString("name"));
				user.setPw(rs.getString("pw"));
				user.setNick(rs.getString("nick"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
				user.setGender(rs.getInt("gender"));
				String tmp = rs.getString("favorite");
				String favorite[] = tmp.split("&");
				user.setFavorite(favorite);
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			ConnUtil.close(conn,ps,rs);
		}
		return user;
	}

	// 개인정보수정
	public int updateUserInfo(User user) {
		
		int rst = 0;
		
		try {
			// 검색 연결
			conn = ConnUtil.getConnection();
			// 준비
			String sql = "update User set pw=?, nick=?, phone=?, email=?, gender=?, favorite=? where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getPw());
			ps.setString(2, user.getNick());
			ps.setString(3, user.getPhone());
			ps.setString(4, user.getEmail());
			ps.setInt(5, user.getGender());
			ps.setString(6, user.getFavorite());
			ps.setString(7, user.getId());
			
			rst = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(conn, ps);
		}
		return rst;
	}

	// 회원탈퇴
	public int deleteUser(String id) {
		String SQL = "delete from User where id=?";
		int rst = 0;
		try {
			conn = ConnUtil.getConnection();
			ps = conn.prepareStatement(SQL);
			ps.setString(1, id);
			rst = ps.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			ConnUtil.close(conn, ps,rs);
		}
		return rst;
	}
	// 찜목록, 구매목록 가져오기
	public List getListInfo(String id){
		List list = new List();
		
		return list;
	}
	// 나의 블로그 목록
	public 	ArrayList<Blog> getBlogInfo(String id){
		
		ArrayList<Blog> list = new ArrayList<Blog>();
		return list;
	}
	// 블로그 하나
		public Blog getBlogInfo(int review_no) {
			Blog blog = new Blog();
			String SQL = "select * from Blog where no='" + review_no + "';";
			try {
				conn = ConnUtil.getConnection();
				ps = conn.prepareStatement(SQL);
				rs = ps.executeQuery();
				rs.next();
				blog.setNo(rs.getInt("no"));
				blog.setNick(rs.getString("nick"));
				blog.setTitle(rs.getString("title"));
				blog.setContent(rs.getString("content"));
				blog.setImg(rs.getString("img"));
				blog.setScore(rs.getInt("score"));
				blog.setBlogscore(rs.getInt("blogscore"));
				blog.setRegdate(rs.getDate("regdate"));
			
				rs.close();
				ConnUtil.close(conn, ps);
			} catch (Exception e) {
				
			}

			return blog;
		}

		// 블로그 추가
		public int addBlog(Blog blog) {
			String SQL = "INSERT INTO Blog(name, title, content, img, score, blogscore, regdate, pw, click) VALUES ( ?, ?, ?, ?,?,?,NOW(),?,?)";
			
			int rst = 0;
			
			try{
				conn = ConnUtil.getConnection();
				
				ps = conn.prepareStatement(SQL);
				ps.setString(1, blog.getNick());
				ps.setString(2, blog.getTitle());
				ps.setString(3, blog.getContent());
				ps.setString(4, blog.getImg());
				ps.setInt(5, blog.getScore());
				ps.setInt(6, blog.getBlogscore());
				ps.setString(7, "1234");
				ps.setInt(8, 0);
			
				rst=  ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return rst;
		}
		
		// 블로그 전체 목록
		   // 블로그 전체 목록
	      public ArrayList<Blog> getAllBlogInfo() {

	         ArrayList<Blog> list = new ArrayList<Blog>();

	         String SQL = "select * from Blog";
	         try {
	            conn = ConnUtil.getConnection();
	            ps = conn.prepareStatement(SQL);
	            rs = ps.executeQuery();
	            
	            while (rs.next()) {
	               Blog blog = new Blog();
	               System.out.println(rs.getInt("no")+ rs.getString("name"));
	               // 리뷰 목록 출력에 필요한 항목들만 객체에 넣음
	               blog.setNo(rs.getInt("no"));
	               blog.setNick(rs.getString("name"));
	               blog.setTitle(rs.getString("title"));
	               blog.setBlogscore(rs.getInt("blogscore"));
	               blog.setClick(rs.getInt("click"));
	               System.out.println(rs.getString("regdate"));
	               blog.setRegdate(rs.getDate("regdate"));

	               list.add(blog);
	            }
	            
	         } catch (Exception e) {
	            e.printStackTrace();
	         }finally{
	            
	            ConnUtil.close(conn, ps,rs);
	         }

	         return list;
	      }
		// 블로그 삭제
		public int deleteBlog(int review_no) {
			String SQL = "delete from Blog where no='"+review_no+"';";
			try {
				conn = ConnUtil.getConnection();
				ps = conn.prepareStatement(SQL);
				rs = ps.executeQuery();
				rs.close();
				ConnUtil.close(conn, ps);
			}catch(Exception e) {
			}
			return 1;
		}
	// 블로그 댓글 전체 가져오기
	public ArrayList<Comment> getAllComment(int blogNo){
		ArrayList<Comment> list = new ArrayList<Comment>();
		return list;
		
	}

	//책정보 하나 가져오기
	public  Book getAllBook(int no){
		Book book = new Book();
		return book;
	}
	
	//책정보 모두 가져오기
	public  ArrayList<Book> getAllBook(){
		ArrayList<Book> list = new ArrayList<Book>();
		return list;
	}
	
	// 책정보 추가
	public int insertBook(Book book){
		
		return -1;
	}
	
	// 책정보 삭제
	public int deleteBook(String title){
			
		return -1;
	}
	
	// 책정보 수정
	public int updateBook(Book book){
		return -1;
	}
	
	//블로그 신고하기
	public int reportBlog(Report report){
		return -1;
	}
	
	// 신고 목록 전체
	public ArrayList<Report> getAllReport(){
		ArrayList<Report> list = new ArrayList<Report>();
		return list;
	}
	
	public ArrayList<CategoryForBook> getAllCateory(){
		
		ArrayList<CategoryForBook> list = new ArrayList<CategoryForBook>();
		
		try {
			conn = ConnUtil.getConnection();	
			String sql = "select * from CategoryForBook";
			ps = conn.prepareStatement(sql);	
			rs = ps.executeQuery();
			
	
			while(rs.next()){
				
				CategoryForBook cfb = new CategoryForBook();
				
				cfb.setNo(rs.getInt("no"));
				cfb.setTitle(rs.getString("title"));
				cfb.setCateNo(rs.getInt("restapi"));
				
				list.add(cfb);
			
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(conn, ps);
		}
		
		return list;
		
	}
	
	public void getAllCategory_(int category, CategoryForBook list){
		
		int i = 0;
		
		//System.out.println(category);
		
		try {
			conn = ConnUtil.getConnection();	
			String sql = "select * from CategoryForBook_ where p_category=?";
			//String sql = "select count(*) from CategoryForBook_ where p_category=?";
			ps = conn.prepareStatement(sql);	
			ps.setInt(1, category);
			rs = ps.executeQuery();
			rs.last();
			int count = rs.getRow();
			rs.beforeFirst();
			
			//System.out.println("count"+count);
			//System.out.println("category"+category);
			//System.out.println(rs.getString("title"));
			
			String tmp[] = new String[count];
			while(rs.next()){
				tmp[i] = rs.getString("title");
				i++;
			}
			list.setCtitle(tmp);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(conn, ps);
		}
		
		
		
	}
	
	   //아이디 찾기
	   public String findID(String name, String phone, String email) {
	      String ID = null;
	      String SQL = "select * from User where name = '"+name+"' AND phone='"+phone+"' AND email='"+email+"';";
	      try {
	         conn = ConnUtil.getConnection();
	         ps = conn.prepareStatement(SQL);
	         rs = ps.executeQuery();
	         
	         while (rs.next()) {
	            ID = rs.getString("id");
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally{
	         
	         ConnUtil.close(conn, ps,rs);
	      }

	      return ID;
	   }
	   //비밀번호 찾을때 회원정보 확인
	   public boolean findPW(String ID, String phone, String email) {
	      String SQL = "select * from User where id = '"+ID+"' AND phone='"+phone+"' AND email='"+email+"';";
	      try {
	         conn = ConnUtil.getConnection();
	         ps = conn.prepareStatement(SQL);
	         rs = ps.executeQuery();
	         
	         while (rs.next()) {
	            return true;
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally{
	         
	         ConnUtil.close(conn, ps,rs);
	      }

	      return false;
	   }
	   
	   //DB에 새로 발급받은 비밀번호 저장
	   public boolean updatePW(String ID, String PW) {
	      String SQL = "UPDATE User SET pw = '"+PW+"' where id = '"+ID+"';";
	      try {
	         conn = ConnUtil.getConnection();
	         ps = conn.prepareStatement(SQL);
	         int rs = ps.executeUpdate();
	      } catch (Exception e) {
	         e.printStackTrace();
	         return false;
	      }finally{
	         ConnUtil.close(conn, ps,rs);
	      }
	      return true;
	   }


	   public boolean emailCheck(String email) {
	      User member = getUserInfo_email(email);
	      boolean bl = false;
	      if (member == null) {
	         bl = false;
	      } else if (email.equals(member.getEmail()) == true) {
	         bl = true;
	      } else if (email.equals(member.getEmail()) == false) {
	         bl = false;
	      }
	      return bl;
	   } 
	   
	   public User getUserInfo_email(String email) {
		      String SQL = "select * from User where email=?";
		      User user = new User();
		      try {
		         conn = ConnUtil.getConnection();
		         ps = conn.prepareStatement(SQL);
		         ps.setString(1, email);
		         rs = ps.executeQuery();
		         if(rs.next()){
		            user.setId(rs.getString("id"));
		            user.setName(rs.getString("name"));
		            user.setPw(rs.getString("pw"));
		            user.setNick(rs.getString("nick"));
		            user.setPhone(rs.getString("phone"));
		            user.setEmail(rs.getString("email"));
		            user.setGender(rs.getInt("gender"));
		            String tmp = rs.getString("favorite");
		            String favorite[] = tmp.split("&");
		            user.setFavorite(favorite);
		         }
		            
		      } catch (Exception e) {
		         e.printStackTrace();
		      }finally{
		         ConnUtil.close(conn,ps,rs);
		      }
		      return user;
		   }
	   public int deleteCateory(int cateNo){
		      
		      String SQL = "delete from CategoryForBook where no=?";
		      int rst = 0;
		      try {
		         conn = ConnUtil.getConnection();
		         ps = conn.prepareStatement(SQL);
		         ps.setInt(1, cateNo);
		         rst = ps.executeUpdate();
		      
		      } catch (Exception e) {
		         e.printStackTrace();
		      }finally{
		         ConnUtil.close(conn, ps,rs);
		      }
		      return rst;
		      
		   }
	
}
