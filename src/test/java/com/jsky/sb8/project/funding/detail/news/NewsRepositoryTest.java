package com.jsky.sb8.project.funding.detail.news;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class NewsRepositoryTest {

	@Autowired
	private NewsRepository newsReposiotry;
	
	@Test
	void test() throws Exception {
		this.getNewsTest();
	}
	
	private void getNewsTest() throws Exception {
		
		List<NewsVO> newsVO = newsReposiotry.findByTmpNumAndCharDivisionContaining(4, "");
				
		for(NewsVO vo : newsVO) {
			System.out.println(vo.getTitle() + ", " + vo.getContents());
		}
		
	}

}
