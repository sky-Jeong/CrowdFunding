package com.jsky.sb8.project.funding.detail.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/comu/**")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	/**
	 * get Reply list
	 */
	@GetMapping("reply")
	@ResponseBody
	public ModelAndView getReplyList(@RequestParam long writeNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<CommunityVO> communityVOs = communityService.getReplyList(writeNum, 1);
		
		mv.addObject("reply", communityVOs);
		mv.setViewName("reward/detail/ajaxResult/comu-reply");
		return mv;
		
	}
	
	/**
	 * get Comment list
	 */
	@GetMapping("list")
	@ResponseBody
	public ModelAndView getCommentList(@RequestParam long tmpNum) throws Exception{
		
		System.out.println("access comu controller");
		ModelAndView mv = new ModelAndView();
		
		List<CommunityVO> communityVOs = communityService.getCommentList(tmpNum, 0);
		
		mv.addObject("comment", communityVOs);
		mv.setViewName("reward/detail/ajaxResult/comu-comment");
		return mv;
		
	}
	
}
