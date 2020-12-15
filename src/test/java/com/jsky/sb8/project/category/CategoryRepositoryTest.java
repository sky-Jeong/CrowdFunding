package com.jsky.sb8.project.category;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;

@SpringBootTest
class CategoryRepositoryTest {

	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private CategoryService categoryService;
	
	private CategoryVO categoryVO;
	
	@Test
	void test() throws Exception {
		this.getCountTest();
	}
	
	private void getCountTest() throws Exception{
		
		long result = categoryRepository.findAllByCharDivision("F");
		System.out.println(result);
		
	}
	
	private void getOneTest() {
		
		categoryVO = categoryRepository.findById(3L).get();
		System.out.println(categoryVO.getCategoryName());
		
		assertNotNull(categoryVO);
		
	}
	
	private void getListTest() {
		
		List<CategoryVO> categoryVOs = categoryRepository.findAll();
		
		for (CategoryVO vo:categoryVOs) {
			System.out.println(vo.getCategoryName());
		}
		
		assertNotNull(categoryVOs);
		
	}

}
