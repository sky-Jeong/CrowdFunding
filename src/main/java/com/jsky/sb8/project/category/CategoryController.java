package com.jsky.sb8.project.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.util.Pager;

@Controller
@RequestMapping(value = "/category/**")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;	

	@PostMapping("list")
	@ResponseBody
	public ModelAndView findCategoryByPageRequest(@RequestParam int page, int size) throws Exception{
		
		System.out.println("access category list -------------------------- ");
		
		ModelAndView mv = new ModelAndView();
		Page<CategoryVO> categoryPage = categoryService.findAllSearch("F", page, size);
		
		mv.addObject("category", categoryPage);
		mv.setViewName("reward/ajaxResult/category");
		return mv;
		
	}

}
