package com.jsky.sb8.project.funding.detail.news;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/detail/**")
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	/**
	 * detail 페이지 news ajax 처리위함
	 */
	@GetMapping("news")
	@ResponseBody
	public ModelAndView getNewsList
						(@RequestParam long tmpNum, String menu, String order) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		System.out.println("access getNewsList : " + tmpNum + ", " + menu + " -------");
		
		if(menu.equals("") || menu == null) {
			menu = "";
		}
		
		List<NewsVO> newsVOs = newsService.getNewsList(tmpNum, menu, order);
		
		mv.addObject("newsVOs", newsVOs);
		mv.setViewName("reward/detail/ajaxResult/detail-news");
		return mv;
		
	}

}
