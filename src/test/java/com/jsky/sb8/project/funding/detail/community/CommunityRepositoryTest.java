package com.jsky.sb8.project.funding.detail.community;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CommunityRepositoryTest {

	@Autowired
	private CommunityRepository communityRepository;
	
	@Test
	void test() throws Exception {
		this.getCountTest();
	}
	
	private void getCountTest() throws Exception{
		
		long result = communityRepository.getCommentCount(4);
		System.out.println(result);
		
	}
	
	private void getCommentList() throws Exception {
		
		List<CommunityVO> VOs = communityRepository.getComment(4L, 0);
		
		for(CommunityVO vo:VOs) {
			System.out.println(vo.getWriter() + ", " + vo.getContents());
			System.out.println(vo.getFundingVO().getEmail());
		}
		
	}

}
