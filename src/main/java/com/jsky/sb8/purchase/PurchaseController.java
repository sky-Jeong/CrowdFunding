package com.jsky.sb8.purchase;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/purchase/**")
public class PurchaseController {

	/**
	 * purchase 페이지 이동
	 */
	@GetMapping("reward/{step}/{projectNum}")
	public ModelAndView getPurchasePage(@PathVariable long projectNum, @PathVariable String step,
										Long rewardNum) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("projectNum : " + projectNum + ", step: "+ step +", rewardNum: " + rewardNum);
		
		mv.setViewName("purchase/reward-" + step);
		return mv;
		
	}
	
}
