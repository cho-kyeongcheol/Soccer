package org.edu.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.edu.service.IF_MemberService;
import org.edu.vo.MemberVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private IF_MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	/**
	    *회원 리스트 파일 입니다.
	 * @throws Exception 
	    */
	   @RequestMapping(value = "/admin/member/list", method = RequestMethod.GET)
	   public String memberList(Locale locale, Model model) throws Exception {
		   List<MemberVO> list = memberService.selectMember();			
			model.addAttribute("memberList", list);	      
	      return "admin/member/member_list";
	   }
	
	/**
	    *회원가입 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/login/signup", method = RequestMethod.GET)
	   public String signup(Locale locale, Model model) {
	      
	      return "login/signup";
	   }
	
	/**
	    *login 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/login/login", method = RequestMethod.GET)
	   public String login(Locale locale, Model model) {
	      
	      return "login/login";
	   }
	   
	   
	   
	   
	/**
	    *community 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/list/community", method = RequestMethod.GET)
	   public String community(Locale locale, Model model) {
	      
	      return "list/community";
	   }
	   
	   
	   
	
	/**
	    *history 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/list/history", method = RequestMethod.GET)
	   public String history(Locale locale, Model model) {
	      
	      return "list/history";
	   }
	   
	
	/**
	    *ticket 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/list/ticket", method = RequestMethod.GET)
	   public String ticket(Locale locale, Model model) {
	      
	      return "list/ticket";
	   }
	   
	   
	/**
	    *kfatv 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/list/kfatv", method = RequestMethod.GET)
	   public String kfatv(Locale locale, Model model) {
	      
	      return "list/kfatv";
	   }
	   
	
	/**
	    * Match 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/list/match", method = RequestMethod.GET)
	   public String match(Locale locale, Model model) {
	      
	      return "list/match";
	   }
	   
	/**
	    * Team 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/list/team", method = RequestMethod.GET)
	   public String team(Locale locale, Model model) {
	      
	      return "list/team";
	   }
	
	/**
	    * News 페이지 파일 입니다.
	    */
	   @RequestMapping(value = "/list/news", method = RequestMethod.GET)
	   public String news(Locale locale, Model model) {
	      
	      return "list/news";
	   }
	
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
