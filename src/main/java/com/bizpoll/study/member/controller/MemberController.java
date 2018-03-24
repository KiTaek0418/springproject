package com.bizpoll.study.member.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bizpoll.study.member.domain.MemberDTO;
import com.bizpoll.study.member.service.IMemberService;

@Controller
@RequestMapping("/member")
@SessionAttributes({"memList", "file"})
public class MemberController {

	private static final Logger logger = 
			LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private IMemberService service;
	
	/*
	 * 회원 가입 페이지
	 */
	@RequestMapping(value="/signup")
	public void signUpGet() throws Exception {
		
	}
	
	/*
	 * 회원 가입 페이지
	 */
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public @ResponseBody int signUpPost(Model model, MemberDTO mDto) throws Exception {
		
		int result = service.signUp(mDto);
 		
		return result;
	}
	
	/*
	 * 아이디 중복 체크(Ajax연동)
	 */
	@RequestMapping(value="/idChk")
	public @ResponseBody int idChk(MemberDTO mDto) throws Exception {
		
		int result = service.idChk(mDto);
		
		return result;
	}
	
	/*
	 * 회원 아이디/비밀번호 찾기 페이지
	 */
	@RequestMapping(value="/membersearch")
	public void memberSearch() throws Exception {
		
	}
	
	/*
	 * 회원 아이디 찾기 페이지
	 */
	@RequestMapping(value="/memberidfind")
	public void memberIdFind(Model model) throws Exception {
		
		model.addAttribute("active", 0);
	}
	
	/*
	 * 회원 아이디 찾기 페이지
	 */
	@RequestMapping(value="/idSearch", method = RequestMethod.POST)
	public String idSearch(MemberDTO mDto, Model model) throws Exception {
		
		String idResult = service.idSearch(mDto);
		model.addAttribute("idResult", idResult);
		model.addAttribute("chk", "0");
		
		return "/member/searchresult";
	}
	
	/*
	 * 회원 비밀 번호 찾기 페이지
	 */
	@RequestMapping(value="/memberpwfind")
	public void memberPwSearch(Model model) throws Exception {
		
		model.addAttribute("active", 1);
	}
	
	/*
	 * 회원 비밀 번호 찾기 페이지
	 */
	@RequestMapping(value="/pwSearch")
	public String pwSearch(MemberDTO mDto, Model model) throws Exception {
		
		String pwResult = service.pwSearch(mDto);
		model.addAttribute("pwResult", pwResult);
		model.addAttribute("chk", "1");
		
		return "/member/searchresult";
	}
	
	/*
	 * 내 정보 페이지
	 */
	@RequestMapping(value="/memberinfo")
	public void memberInfo(Model model) throws Exception {
		
	}
	
	/*
	 * 내 정보 수정 페이지
	 */
	@RequestMapping(value="/membermodify")
	public void modifyGet(Model model) throws Exception {
		
	}
	
	/*
	 * 내 정보 수정 페이지
	 */
	@RequestMapping(value="/membermodify", method=RequestMethod.POST)
	public String modifyPost(MemberDTO mDto, RedirectAttributes rttr, Model model) throws Exception {
		String url = "redirect:/board/listAll";
		
		int result = service.modify(mDto);
		if (result > 0) {
			rttr.addFlashAttribute("result", 1);
		} else {
			url = "/member/membermodify";
		}

		return url;
	}
	
	/*
	 * 로그인 페이지
	 */
	@RequestMapping(value="/login")
	public void logInGet() throws Exception {
		logger.info("login Get!!!!!!!!!!!!!");
		
	}
	
	/*
	 * 로그인 페이지
	 */
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String logInPost(Model model, MemberDTO mDto) throws Exception {
		logger.info("login POST!!!!!!!!!!!!!");
		String url = "";
		
		MemberDTO memList = service.logIn(mDto);
		
		if(memList != null) {
			model.addAttribute("memList", memList);
			url = "redirect:/board/listAll";
		} else {
			model.addAttribute("logchk", 1);
			model.addAttribute("logMsg", "아이디 또는 비밀번호가 틀립니다.");
			url = "/member/login";
		}
 		
		return url;
	}
	
	/*
	 * 로그 아웃 페이지
	 */
	@RequestMapping(value="/logout")
	public String logout(SessionStatus session) throws Exception {
		logger.info("logout!!!!!!!!!!!!!");
		
		session.setComplete(); //섹션 끊기
		
		return "redirect:/board/listAll";
	}
	
	/*
	 * 회원 탈퇴 페이지
	 */
	@RequestMapping(value="/memberdel")
	public void memberDelGet(Model model) throws Exception {
		logger.info("memberDelGet!!!!!!!!!!!!!");
		
	}
	
	/*
	 * 회원 삭제 페이지
	 */
	@RequestMapping(value="/memberdel", method = RequestMethod.POST)
	public String memberDelPost(MemberDTO mDto, RedirectAttributes rttr, Model model, SessionStatus session) throws Exception {
		logger.info("memberDelPost!!!!!!!!!!!!!");
		String url = "redirect:/board/listAll";
		
		int result = service.memberDel(mDto);
		
		if(result > 0) {
			rttr.addFlashAttribute("result", 2);
			session.setComplete(); //회원 탈퇴가 되면 섹션 끊기
		} else {
			model.addAttribute("delete", 1);
			url = "/member/memberdel";
		}
		
		return url;
	}
	
	/*
	 * 비밀 번호 변경 페이지
	 */
	@RequestMapping(value="/memberpwchange")
	public void pwChange(Model model, MemberDTO mDto) throws Exception {
		
	}
	
	/*
	 * 비밀 번호 변경 페이지
	 */
	@RequestMapping(value="/memberpwchange", method=RequestMethod.POST)
	public String pwChange(MemberDTO mDto, RedirectAttributes rttr, Model model, SessionStatus session) throws Exception {
		logger.info("modify Post!!!!!!!!!!!!!");
		String url = "redirect:/member/login";
		
		int result = service.pwChange(mDto);
		
		if(result > 0) {
			rttr.addFlashAttribute("result", 3);
			session.setComplete();
		} else {
			url = "/member/memberpwchange";
		}

		return url;
	}
}
