package com.jsky.sb8.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MemberRepositoryTest {
	
	@Autowired
	private MemberRepository memberRepository;

	@Test
	void test() throws Exception {
		this.findByTest();
	}
	
	private void findByTest() throws Exception {
		
		MemberVO memberVO = memberRepository.findByEmail("email1@test.com");
		assertNotNull(memberVO);
		
	}

}
