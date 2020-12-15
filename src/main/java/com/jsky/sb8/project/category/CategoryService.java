package com.jsky.sb8.project.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.jsky.sb8.util.Pager;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryRepository categoryRepository;

	public List<CategoryVO> findAllSearch(String charDivision, Pager pager) throws Exception{
		
		PageRequest pageRequest = PageRequest.of(pager.getPage()/10, pager.getSize());
		
		System.out.println(pager.getPage());
		pager.setTotalCount(categoryRepository.findAllByCharDivision(charDivision));
		pager.btnCheck();
		
		System.out.println( pageRequest.getPageNumber() + ", " + pageRequest.getPageSize());
		
		return categoryRepository.findByCharDivision(charDivision, pageRequest);
		
	}

}
