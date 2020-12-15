package com.jsky.sb8.project.funding;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/funding/**")
public class FundingController {
	
	@GetMapping("main")
	public ModelAndView getMainPage() {
		
		ModelAndView mv = new ModelAndView();

		
		mv.setViewName("reward/main");
		return mv;
		
	}
	
}
