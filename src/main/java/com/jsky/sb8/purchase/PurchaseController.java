package com.jsky.sb8.purchase;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/purchase/**")
public class PurchaseController {

	/**
	 * purchase 페이지 이동
	 */
	@GetMapping("reward/{projectNum}")
	public ModelAndView getPurchasePage(@PathVariable long projectNum, Long rewardNum) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("projectNum : " + projectNum + ", rewardNum: " + rewardNum);
		
		mv.setViewName("purchase/reward");
		return mv;
		
	}
	
}
