package com.mybusan.schedule;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mybusan.place.PlaceDTO;
import com.mybusan.team.TeamDTO;







@Controller
public class ScheduleCont {


	
	@Autowired
	private ScheduleDetailDAO dao2;
	
	
	public ScheduleCont() {
		System.out.println("-----scheduleCont() 객체 생성됨");
	}
	
	 @RequestMapping(value = "schedule/create.do", method = RequestMethod.GET)
	    public ModelAndView ccc() {
	        ModelAndView mav=new ModelAndView();
	        mav.setViewName("googlemap");
	       
	        return mav;
	    }//deleteForm() end
	
	
	 @RequestMapping(value = "scheduleDetail/create.do", method = RequestMethod.POST)
	    public ModelAndView createProc(@ModelAttribute ScheduleDTO dto, @RequestParam(value="p_code",required=true) List<String> list) {
	        ModelAndView mav=new ModelAndView();

	        int cnt=dao2.createS(dto);
	        
	        dao2.detailinsert(list);
	        
	        if(cnt==0) {
	        	System.out.println("실패실패실패패패패패패패패패");
	        	 String msg3 ="<p>실패  </p>";
		            mav.setViewName("redirect:/home.do");
		            mav.addObject("msg3",  msg3);
	        }else {
	        	 String msg3 ="<p>성공 </p>";
	            mav.setViewName("redirect:/schedule/scheduleList.do");
	            mav.addObject("msg3",  msg3);
	        }//if end
	      
	           
	    
	        return mav;
	    }//createProc() end
	 
	 
	 //             
	 @RequestMapping("schedule/scheduleList.do")
	    public ModelAndView list(@RequestParam(value = "page", defaultValue = "1") int page) {
		    //System.out.println("99999");
		    //System.out.println(page);		 
	        ModelAndView mav=new ModelAndView();
	        mav.setViewName("schedule/scheduleList");
	
	        int totalRowCount=dao2.totalRowCount(); //총 글갯수
	        List<Map<String, Object>> list=dao2.list(page);
	        mav.addObject("list",  list);
	        mav.addObject("count", totalRowCount);
	        int a= dao2.SchedulePaging(totalRowCount);
	        mav.addObject("a", a);
	     
	      
	     
	        
	        return mav;
	    }//list() end
	 
	 
	 
	 @RequestMapping(value = "schedule/delete.do", method = RequestMethod.GET)
	    public ModelAndView deleteForm(int s_no) {
	        ModelAndView mav=new ModelAndView();
	        mav.setViewName("schedule/deleteForm");
	        mav.addObject("s_no", s_no);
	        return mav;
	    }//deleteForm() end
	 
	 @RequestMapping(value = "schedule/delete.do", method = RequestMethod.POST)
	    public ModelAndView deleteProc(int s_no) {
	        ModelAndView mav=new ModelAndView();
	        
	        int cnt=dao2.delete(s_no);
	        if(cnt==0) {
	            mav.setViewName("team/msgView");
	            String img  ="<img src='../images/fail.png'>";
	            String link1="<input type='button' value='다시시도' onclick='javascript:history.back()'>";
	            String link2="<input type='button' value='그룹목록' onclick='location.href=\"list.do\"'>";
	            mav.addObject("msg1", "<p>팀 삭제 실패!!</p>");  
	            mav.addObject("img",   img);
	            mav.addObject("link1", link1);
	            mav.addObject("link2", link2);
	        }else {
	            mav.setViewName("redirect:/schedule/scheduleList.do");
	        }//if end
	        
	        return mav;
	    }//deleteForm() end
	 
	 @RequestMapping("schedule/read.do")
	    public ModelAndView read(int s_no) {
	        ModelAndView mav=new ModelAndView();
	        mav.setViewName("schedule/read");
	        ScheduleDTO dto= dao2.read(s_no);
	        List<PlaceDTO> dtop=dao2.readp(s_no);
	        
	        mav.addObject("dto", dto);
	        mav.addObject("dtop", dtop);
	        
	     
	        
	        return mav;
	    }//read() end
	 

}
