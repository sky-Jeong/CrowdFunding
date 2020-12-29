package com.jsky.sb8.member;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.email.EmailChkService;
import com.jsky.sb8.email.EmailChkVO;

@Controller
@RequestMapping(value = "/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	@GetMapping("sign")
	public ModelAndView getSignPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/signInfo");
		return mv;
	}
	
	@GetMapping("signRegist")
	public ModelAndView getSignUpPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/signRegist");
		return mv;
	}
	
	@PostMapping("signRegist")
	public ModelAndView setSignUpPage(MemberVO memberVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		System.out.println(memberVO.getMemberNum());
		
		if(memberVO.getStatus() == null) {
			memberVO.setStatus("개인");
		}
	
		memberVO = memberService.saveMember(memberVO);
		
		String result = "회원가입에 실패하였습니다.";
		if(memberVO != null) {
			result = "회원가입을 완료하였습니다.";
		}
				
		mv.addObject("result", result);
		mv.addObject("path", "../");
		mv.setViewName("common/signResult");
		return mv;
		
	}
	
	@PostMapping("memberChk")
	@ResponseBody
	public ModelAndView getMemberEmailChk(MemberVO memberVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		memberVO = memberService.findByEmail(memberVO.getEmail());
		
		String result = "success";
		if(memberVO != null) {
			result = "fail";
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
		
	}
	
}
