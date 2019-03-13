package Controll;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.Service;
import Model.User;

@WebServlet("/MyPage_Modify")
public class MyPage_Modify extends HttpServlet {
   private static final long serialVersionUID = 1L;
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setCharacterEncoding("UTF-8");
      HttpSession session = request.getSession();
      User user = (User)session.getAttribute("user");
      String pw, nick, phone, email;
      String favorite[];
      String gender;
      String address;
      
      pw = request.getParameter("pw");
      if(pw == null || pw.equals("")){
         
      }else
         user.setPw(pw);
      
      nick = request.getParameter("nick");
      if(nick == null || nick.equals(nick)){
         
      }else
         user.setNick(nick);
      
      gender = request.getParameter("gender");
      if(gender.equals("남자")){
         user.setGender(1);
      }else
         user.setGender(0);

      phone = request.getParameter("phone");
      if(phone == null || phone.equals("")){
         
      }else
         user.setPhone("콜");
      
      email = request.getParameter("email");
      if(email == null || email.equals("")){
         
      }else
         user.setEmail(email);
      
      favorite = request.getParameterValues("favorite");
      if(favorite == null ){
         
      }else
         user.setFavorite(favorite);
      
      Service service = new Service();
      int rst = service.updateUserInfo(user);
      
      
      if(rst == 1){
         session.setAttribute("user", user);
         address="/SEProject/jsp/template_myPage.jsp";// 寃쎈줈�꽕�젙 �떎�떆 �빐�빞�븿
         response.sendRedirect(address);
      }
      
   }

}