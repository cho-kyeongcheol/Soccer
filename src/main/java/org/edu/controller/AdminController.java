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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	@Inject
	private IF_MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	
	/**
	 * 회원관리 상세보기 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "admin/member/view", method = RequestMethod.GET)
	public String memberView(@RequestParam("user_id") String user_id, Locale locale, Model model) throws Exception {
		MemberVO memberVO = memberService.viewMember(user_id);
		model.addAttribute("memberVO", memberVO);
		return "admin/member/member_view";
	}
	
	/**
	 * 회원관리 > 삭제 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "admin/member/delete", method = RequestMethod.POST)
	public String memberDelete(@RequestParam("user_id") String user_id, Locale locale) throws Exception {
		memberService.deleteMember(user_id);
		return "redirect:/admin/member/list";
	}

	/**
	    *회원 리스트 입니다.
	 * @throws Exception 
	    */
	   @RequestMapping(value = "/admin/member/write", method = RequestMethod.GET)
	   public String memberList(Locale locale, Model model) throws Exception {
		  return "admin/member/member_write";
	   }
	   
	   @RequestMapping(value = "admin/member/write", method = RequestMethod.POST)
		public String memberWrite(MemberVO memberVO, Locale locale, RedirectAttributes rdat) throws Exception {
			memberService.insertMember(memberVO);
			return "redirect:/admin/member/list";
		}
	
	
	
}
