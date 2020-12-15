package com.jsky.sb8.project.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public ModelAndView findCategoryByPageRequest(Pager pager) throws Exception{
		
		System.out.println("access category list -------------------------- page: " + pager.getPage());
		
		ModelAndView mv = new ModelAndView();
		List<CategoryVO> categoryList = categoryService.findAllSearch("F", pager);
		
		mv.addObject("pager", pager);
		mv.addObject("category", categoryList);
		mv.setViewName("reward/ajaxResult/category");
		return mv;
		
	}

}
