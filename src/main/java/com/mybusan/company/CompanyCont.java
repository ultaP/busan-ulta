package com.mybusan.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CompanyCont {
	public CompanyCont() {
		System.out.println(" -----CompanyCont ()객체 생성 됨 ");
	}
	@RequestMapping("/company.do")
	public ModelAndView home() {
		ModelAndView mav=new ModelAndView();
		//redirect : 등록한 명렁어를 호출할 수 있Da
		mav.setViewName("/company/companyIntroduction");
		return mav;
	}//home() end
}
