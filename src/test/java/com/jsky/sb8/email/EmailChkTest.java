package com.jsky.sb8.email;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class EmailChkTest {
	
	@Autowired
	private EmailChkRepository emailChkRepository;

	@Test
	void test() {
		this.saveUpdateTest();
	}
	
	private void saveUpdateTest() {
		
		EmailChkVO emailChkVO = new EmailChkVO();
		emailChkVO.setChkNum(24);
		emailChkVO.setConfirmChk("");
		emailChkVO.setConfirmNum(1234);
		emailChkVO.setEmail("test2@test.com");
		
		emailChkVO = emailChkRepository.save(emailChkVO);
		System.out.println(emailChkVO.getChkNum() + ", " + emailChkVO.getConfirmNum());
		
	}
	
	private void saveTest() {
		
		EmailChkVO emailChkVO = new EmailChkVO();
		
		emailChkVO.setConfirmChk("");
		emailChkVO.setConfirmNum(1234);
		emailChkVO.setEmail("test2@test.com");
		
		emailChkVO = emailChkRepository.save(emailChkVO);
		System.out.println(emailChkVO.getChkNum());
		
	}

}
