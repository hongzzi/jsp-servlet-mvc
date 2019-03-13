package Controll;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
import Controll.NaverBookService;
 
@Controller
public class BookController {
    @Autowired
    private NaverBookService service; 
    

    @RequestMapping("bookList.do")
    public ModelAndView bookList(@RequestParam(required=false)String keyword, @RequestParam String hidden){
        ModelAndView mav = new ModelAndView();
        System.out.println("hidden"+ hidden);
        
        
	    if(keyword !=null)
	    {	
	    	System.out.println(keyword);
	    	mav.addObject("list",service.searchBook(keyword, 10, 1));
	    }
	    
	    if(hidden.equals("1")){
	    	 mav.setViewName("template_book_search");
	    }else{
	    	System.out.println("sdafsf");
	    	mav.setViewName("review_search");
	    }
	   
        return mav;
    }
}