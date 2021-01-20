package com.jsky.sb8.project.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.jsky.sb8.util.Pager;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryRepository categoryRepository;

	public Page<CategoryVO> findAllSearch(String charDivision, int page, int size) throws Exception{
		Pageable pageable = PageRequest.of(page, size);
		System.out.println(pageable.getPageNumber() + ", " + pageable.getPageSize());
		return categoryRepository.findByCharDivision(charDivision, pageable);
	}
	
	public List<CategoryVO> findAllCategory() throws Exception{
		return categoryRepository.findAllCategory();
	}

}
