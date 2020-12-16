package com.jsky.sb8.project.funding;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/funding/**")
public class FundingController {
	
	@Autowired
	private FundingService fundingService;
	
	@ModelAttribute("lastChk")
	public boolean getLastChk(boolean last) {
		System.out.println(!last);
		return !last;
	}
	
	@GetMapping("main")
	public ModelAndView getMainPage() {
		
		ModelAndView mv = new ModelAndView();

		mv.setViewName("reward/main");
		return mv;
		
	}
	
	@GetMapping("list")
	@ResponseBody
	public ModelAndView getList(@RequestParam int rewardPage) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		Page<FundingVO> fundingVOs = fundingService.findAllCategory(rewardPage);
		this.getLastChk(fundingVOs.isLast());
		
		mv.addObject("funding", fundingVOs);
		mv.setViewName("reward/ajaxResult/list");
		return mv;
		
	}
	
}
