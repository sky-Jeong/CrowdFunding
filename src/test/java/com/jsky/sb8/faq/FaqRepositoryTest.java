package com.jsky.sb8.faq;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.jsky.sb8.project.faq.FaqRepository;
import com.jsky.sb8.project.faq.FaqVO;
import com.jsky.sb8.project.funding.FundingRepository;
import com.jsky.sb8.project.funding.FundingVO;

@SpringBootTest
class FaqRepositoryTest {

	@Autowired
	private FaqRepository faqRepository;
	@Autowired
	private FundingRepository fundingRepository;
	
	@Test
	void test() {
		
	}

}
