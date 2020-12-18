package com.jsky.sb8.project.funding;

import java.sql.Date;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class FundingService {

	@Autowired
	private FundingRepository fundingRepository;
	
	public Page<FundingVO> findByStartDateGreaterThan(int rewardPage) throws Exception{
		
		Pageable pageable = PageRequest.of(rewardPage, 9);
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
		
		return fundingRepository.findByStartDateGreaterThanOrderByStartDate(today, pageable);
		
	}
	
	public Page<FundingVO> findAllCategory(String status, int rewardPage) throws Exception{
		Pageable pageable = PageRequest.of(rewardPage, 9);
		return fundingRepository.findByStatusContainingAndStatusNotOrderByAchievementDesc(status, "C", pageable);
	}
	
	public Page<FundingVO> findCategory(int categoryNum,int rewardPage, String status) throws Exception{
		Pageable pageable = PageRequest.of(rewardPage, 9);
		return fundingRepository.findByCategoryNum2AndStatusContainingOrderByAchievementDesc(categoryNum, status, pageable);
	}
	
}
