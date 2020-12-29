package com.jsky.sb8.project.funding;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/funding/**")
public class FundingController {
	
	@Autowired
	private FundingService fundingService;
	
	/**
	 * Funding main 페이지
	 */
	@GetMapping("main")
	public ModelAndView getMainPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reward/main");
		return mv;		
	}
	
	/**
	 * 카테고리 리스트 받아오기
	 */
	@GetMapping("category")
	public ModelAndView getCategoryPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reward/category");
		return mv;		
	}
	
	/**
	 * 프로젝트 상세정보 메인
	 */
	@GetMapping("detail/{menu}/{num}")
	public ModelAndView getCategorySelect(@PathVariable String menu, @PathVariable long num) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		FundingVO fundingVO = fundingService.findById(num).get();
		
		mv.addObject("info", fundingVO);
		mv.setViewName("reward/detail/"+menu);
		return mv;
		
	}
	
	/**
	 * 오픈 예정 펀딩 프로젝트 메인페이지
	 */
	@GetMapping("comingsoon")
	public ModelAndView getComingSoonPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reward/comingsoon");
		return mv;		
	}
	
	/**
	 * 오픈 예정 프로젝트 리스트 받아오기
	 */
	@GetMapping("comingsoon/list")
	@ResponseBody
	public ModelAndView getList(@RequestParam int rewardPage) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		Page<FundingVO> fundingVOs = fundingService.findByStartDateGreaterThan(rewardPage);
		
		mv.addObject("funding", fundingVOs);
		mv.setViewName("reward/ajaxResult/comingsoon-list");
		return mv;
		
	}
		
	/**
	 * 펀딩 리스트 받아오기
	 */
	@GetMapping("list")
	@ResponseBody
	public ModelAndView getList(@RequestParam int rewardPage, int categoryNum, String status) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		Page<FundingVO> fundingVOs = null; 
		System.out.println("categoryNum: " + categoryNum + ", status: " + status);
		
		if(categoryNum <= 1) {
			System.out.println("total page import ------------------");
			fundingVOs = fundingService.findAllCategory(status, rewardPage);
		} else {
			fundingVOs = fundingService.findCategory(categoryNum, rewardPage, status);
		}
		
		mv.addObject("funding", fundingVOs);
		mv.setViewName("reward/ajaxResult/list");
		return mv;
		
	}
	
}
