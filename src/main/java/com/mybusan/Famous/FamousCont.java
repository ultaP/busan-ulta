package com.mybusan.Famous;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FamousCont {
	
	
	public FamousCont() {
		System.out.println(" -----FamousCont ()객체 생성 됨 ");
	}
	@RequestMapping("/Famous.do")
	public ModelAndView home1() {
		ModelAndView mav=new ModelAndView();
		//redirect : 등록한 명렁어를 호출할 수 있Da
		mav.setViewName("/famousList/famousList");
		return mav;
	}//home() end
	
	@RequestMapping("/Famous2.do")
	public ModelAndView home2() {
		ModelAndView mav=new ModelAndView();
		//redirect : 등록한 명렁어를 호출할 수 있Da
		mav.setViewName("/famousList/famousList2");
		return mav;
	}//home() end
	
	@RequestMapping("/Famous3.do")
	public ModelAndView home3() {
		ModelAndView mav=new ModelAndView();
		//redirect : 등록한 명렁어를 호출할 수 있Da
		mav.setViewName("/famousList/famousList3");
		return mav;
	}//home() end
	
	@RequestMapping("/Famous4.do")
	public ModelAndView home4(int a) {
		ModelAndView mav=new ModelAndView();
		//redirect : 등록한 명렁어를 호출할 수 있Da
		mav.setViewName("/famousList/famousListDetail"+a);
		return mav;
	}//home() end
	
}
