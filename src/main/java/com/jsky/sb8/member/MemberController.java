package com.jsky.sb8.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/member/**")
public class MemberController {

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
	
}
