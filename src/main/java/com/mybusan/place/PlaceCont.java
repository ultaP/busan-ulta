package com.mybusan.place;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlaceCont {

	@Autowired
	private PlaceDAO dao;
	
	public PlaceCont() {
		System.out.println("-----------PlaceCont() 객체생성됨");
	}
	
	//http://localhost:9095/place/list.do
	
	@RequestMapping("place/list.do")
	public ModelAndView list() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("googlemap");
		
		List<PlaceDTO> list2 =dao.list2();
		//System.out.println("---------"+list2.size());
		
		
		mav.addObject("list2", list2);
		
		return mav;
	}//list() end
	
	
	@ResponseBody
	@RequestMapping("listm.do")
	public  List<PlaceDTO> listm(String p_sigungu) {
		//PlaceDTO mav=new PlaceDTO();
		System.out.println(p_sigungu+" con");
		
		// List<PlaceDTO> listm =dao.listm(p_sigungu);
		//System.out.println("---------"+list2.size());
		
		List<PlaceDTO> listm=   dao.listm(p_sigungu);
		//mav.addObject("listm", listm);
		
		return listm;
	}//list() end
	
	
	@ResponseBody
	@RequestMapping("listD.do")
	public  List<PlaceDTO> listD(String p_umd) {
		//PlaceDTO mav=new PlaceDTO();
		System.out.println(p_umd+" con");
		
		// List<PlaceDTO> listm =dao.listm(p_sigungu);
		//System.out.println("---------"+list2.size());
		
		List<PlaceDTO> listD=   dao.listD(p_umd);
		//mav.addObject("listm", listm);
		System.out.println(listD);
		return listD;
	}//list() end
	
	
	
	
	
	/*
	@RequestMapping("place/list3.do")
	public ModelAndView list3(String p_sigungu) {//예)강서구
		ModelAndView mav=new ModelAndView();
		mav.setViewName("place3");
		
		List<PlaceDTO> list3 =dao.list3(p_sigungu);
		
		
		mav.addObject("list3", list3);
		
		return mav;
	}//list3() end
	*/

//	@RequestMapping("place/list3.do")
	//@ResponseBody
	//public List<PlaceDTO> list3(String p_sigungu) {//예)강서구
		//return dao.list3(p_sigungu);
	//}//list3() end
	
	
	}
	
	

