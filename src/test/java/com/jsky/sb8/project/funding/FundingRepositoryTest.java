package com.jsky.sb8.project.funding;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

@SpringBootTest
class FundingRepositoryTest {

	@Autowired
	private FundingRepository fundingRepository;
	
	@Test
	void test() throws Exception {
		this.getListTest5();
	}
	
	private void getListTest5() throws Exception{
		
		Pageable pageable = PageRequest.of(0, 9);
		Page<FundingVO> page
			= fundingRepository.findByStatusContainingAndStatusNotOrderByAchievementDesc("", "C", pageable);
		
		List<FundingVO> fundingVOs = page.getContent();
		for(FundingVO vo:fundingVOs) {
			System.out.println(vo.getTitle() + ", " + vo.getStatus());
		}
		
	}
	
	private void getListTest4() throws Exception{
		
		Pageable pageable = PageRequest.of(0, 9);
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
	
		Page<FundingVO> page = fundingRepository.findByStartDateGreaterThanOrderByStartDate(today, pageable);
		List<FundingVO> fundingVOs = page.getContent();
		
		System.out.println(page.getTotalPages());
		for(FundingVO vo:fundingVOs) {
			System.out.println(vo.getTitle() + ", " + vo.getMakerVO().getMakerNum());
		}
		
	}

	private void getListTest3() throws Exception {
		
		Pageable pageable = PageRequest.of(0, 9);
		Page<FundingVO> page = fundingRepository.findByCategoryNum2AndStatusContainingOrderByAchievementDesc(2, "",pageable);
		
		List<FundingVO> fundingVOs = page.getContent();
		for(FundingVO vo:fundingVOs) {
			System.out.println(vo.getTitle() + ", " + vo.getCategoryVO().getCategoryNum() + vo.getStatus());
		}
		
	}
	
	private void setSaveTest() {
		
		List<FundingVO> fundingVOs = new ArrayList<FundingVO>();
		
		for(int i = 0; i < 20; i++) {
			
			FundingVO fundingVO = new FundingVO();
			
			fundingVO.setTitle("title"+i);
			fundingVO.setManager("manager"+i);
			fundingVO.setCharDivision("F");
			//fundingVO.setCategoryNum(2);
			fundingVO.setMakerNum(1);
			fundingVO.setEmail("test"+i+"@test.com");
			fundingVO.setBusinessDivision("개인");
			fundingVO.setContents("contents"+i);
			
			Date calendar = Date.valueOf("2020-12-16");
			
			fundingVO.setStartDate(calendar);
			fundingVO.setDeadline(calendar);
			fundingVO.setPayDate(calendar);
			fundingVO.setSendDate(calendar);
			
			fundingVO.setTarget(1000000);
			fundingVO.setAchievement(0);
			
			fundingVO.setStatus("Y");
			fundingVO.setSign(0);
			
			fundingVOs.add(fundingVO);
			
		}
		
		fundingRepository.saveAll(fundingVOs);
		
	}

	private void getListTest() {
		
		List<FundingVO> fundingVOs = fundingRepository.findAll();
		for(FundingVO vo:fundingVOs) {
			System.out.println(vo.getNum());
			System.out.println(vo.getTitle());
			System.out.println(vo.getCategoryVO().getCategoryNum());
			System.out.println(vo.getCategoryVO().getCategoryName());
			System.out.println("----------------------");
		}
		
	}
	
}
