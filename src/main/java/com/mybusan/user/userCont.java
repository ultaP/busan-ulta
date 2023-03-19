package com.mybusan.user;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import java.io.File;
import java.util.Random;



@Controller
public class userCont {
    @Autowired
    userDAO userdao;

    @Autowired
    private JavaMailSender mailsender;
   
    
    
    @RequestMapping(value = "/myPage.do", method = RequestMethod.GET)
    public String myPage(){
    	System.out.println("asd");
        return "user/myPage";
    }
    
    @RequestMapping(value = "/passwdChange.do", method = RequestMethod.GET)
    public String passwdChange(){
    	System.out.println("asd");
        return "user/passwdChange";
    }

    @RequestMapping(value = "/loginForm")
    public String loginForm(){
        return "user/loginForm";
    }

    @RequestMapping(value = "/loginProc", method = RequestMethod.POST)
    public ModelAndView loginProc(userDTO userdto, HttpServletRequest request, HttpServletResponse response, HttpSession session){
        ModelAndView mav = new ModelAndView();

        if (session.getAttribute("login") != null){
            // 기존에 login이란 세션 값이 존재한다면
            session.removeAttribute("login"); // 기존값을 제거해 준다
        }

        userDTO dto = userdao.loginCheck(userdto); // 로그인 확인 과정

        if(dto != null){ // 로그인 성공한 경우
            session.setAttribute("login",dto);
            mav.setViewName("redirect:/"); // * 홈으로 이동
            if(request.getParameter("save_id") != null){ // 아이디 저장에 체크한 경우
                Cookie cookie = new Cookie("saved_id", dto.getUser_id());
                cookie.setMaxAge(60*60*24*10); // 10일 동안 아이디 보관
                response.addCookie(cookie);
            }
        }
        else{ // 로그인 실패한 경우
        	
            mav.addObject("loginfail", true);
            mav.setViewName("redirect:/loginForm");
        }

        return mav;
    }
    
    @RequestMapping("logout.do")
   	public ModelAndView logout(HttpSession session) {
   		
       	userdao.logout(session);
   		ModelAndView mav = new ModelAndView();
   		mav.setViewName("index");
   		mav.addObject("msg", "logout");
   		
   		return mav;
   	}

    @RequestMapping(value = "/registerForm")
    public String registerForm(){
        return "user/registerForm";
    }

    @ResponseBody
    @RequestMapping(value = "/registerProc", method = RequestMethod.POST)
    public String registerProc(userDTO userdto, HttpServletRequest req){
        String user_prop = "-";
        System.out.println("---------------회원가입성공");
        MultipartFile prop_file = userdto.getProp_file();

        if(prop_file != null && !prop_file.isEmpty()){
            user_prop = prop_file.getOriginalFilename();
            try{
                ServletContext application = req.getSession().getServletContext();
                String path = application.getRealPath("/storage");
                prop_file.transferTo(new File(path+"/"+user_prop));
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        userdto.setUser_prop(user_prop);
        userdao.register(userdto);
          return "123";
    }

    @ResponseBody
    @RequestMapping(value = "/id_overlap.do", method = RequestMethod.POST)
    public int idOverlapCheck(userDTO userdto){
        if(userdao.idOverlapCheck(userdto)==1){ // 중복된 경우
            return 1;
        }
        else{
            return 0;
        }
    }

    @ResponseBody
    @RequestMapping(value = "/email_overlap.do", method = RequestMethod.POST)
    public int emailOverlapCheck(userDTO userdto){
        if(userdao.emailOverlapCheck(userdto)==1){ // 중복된 경우
            return 1;
        }
        else{
            return 0;
        }
    }

    @ResponseBody
    @RequestMapping(value = "/phone_overlap.do", method = RequestMethod.POST)
    public int phoneOverlapCheck(userDTO userdto){
        if(userdao.phoneOverlapCheck(userdto)==1){ // 중복된 경우
            return 1;
        }
        else{
            return 0;
        }
    }

    @RequestMapping(value = "/findIDForm")
    public String findIDForm(){
        return "/user/findIDForm";
    }
    
    @RequestMapping(value = "/findPWForm")
    public String findPWForm(){
        return "/user/findPWForm";
    }

    @ResponseBody
    @RequestMapping(value = "/SendVericode.do", method = RequestMethod.POST)
    public int SendVericode(userDTO userdto, HttpSession session){
    	
    	System.out.println(userdto.getUser_email());
    	System.out.println(userdto.getUser_id());
    	System.out.println(userdto.getUser_name());
    	
    	
        if((userdao.SendVericode(userdto)==1)){ // 이름, 이메일이 일치하는 경우
            if(session.getAttribute("veri_code_id")!=null){ // 기존에 발급받은 코드가 있다면 삭제
                session.removeAttribute("veri_code_id");
            }

            Random rand = new Random();
            String veri_code = "";

            for(int i=1;i<=10;i++){ // 10자리 영문+숫자 조합의 인증코드 생성
                switch(rand.nextInt(3)){
                    case 2 : veri_code += (char)(rand.nextInt(26)+65); break;
                    case 1 : veri_code += (char)(rand.nextInt(26)+97); break;
                    case 0 : veri_code += rand.nextInt(10);
                }
            }
            
          //  System.out.println(veri_code);

            try{
                MimeMessage message = mailsender.createMimeMessage();
                MimeMessageHelper mailHelper = new MimeMessageHelper(message,"UTF-8");
                mailHelper.setFrom("qkrdmfxk@gmail.com"); // 송신자 메일
                mailHelper.setTo(userdto.getUser_email()); // 수신자 메일
                mailHelper.setSubject("아이디 찾기 인증코드 발송"); // 메일 제목
                mailHelper.setText("인증코드는 ["+veri_code+"] 입니다"); // 메일 내용

                mailsender.send(message);
            }catch(Exception e){
                e.printStackTrace();
            }

            session.setAttribute("veri_code_id", veri_code); // 세션별로 인증코드 저장
            return 1;
        }
        else{
            return 0;
        }
    }

    @RequestMapping(value = "/findIDProc", method = RequestMethod.POST)
    public ModelAndView findIDProc(userDTO userdto, @RequestParam String veri_code, HttpSession session){
        ModelAndView mav = new ModelAndView();
        String issuedcode = session.getAttribute("veri_code_id").toString();

        if(!veri_code.equals(issuedcode)){ // 인증 코드가 일치하지 않으면
            mav.setViewName("redirect:/findIDForm"); // 아이디 찾기 폼으로 돌려보냄
        }
        else{ // 인증 코드가 일치하면
            userDTO outputdto = userdao.findIDProc(userdto);
            session.removeAttribute("veri_code_id"); // 인증용 세션 제거
            if(userdto.getUser_name()!=null) {
            mav.setViewName("user/findIDResult");}
            else{mav.setViewName("user/findPWResult");}
            
            mav.addObject("user_id", outputdto.getUser_id());
            mav.addObject("user_pw", outputdto.getUser_pw());
        }
        return mav;
    }
}
