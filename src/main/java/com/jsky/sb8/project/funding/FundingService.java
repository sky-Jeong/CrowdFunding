package com.jsky.sb8.project.funding;

import java.sql.Date;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
		/*
		 	정렬 기준
				select * from FundingProject
				order by Achievement DESC, deadline ASC;
		 		1. Achievement Desc
		 		2. deadline ASC
		 		
		 		status
		 		deadline d
		 */
		Pageable pageable = PageRequest.of(rewardPage, 9,
											Sort.by("status").descending()
											.and(Sort.by("achievement").descending())
											.and(Sort.by("deadline").ascending()));
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
		
		return fundingRepository.
				findByStatusContainingAndStatusNotAndStartDateLessThanEqual
					(status, "C", today,pageable);
	}
	
	public Page<FundingVO> findCategory(int categoryNum,int rewardPage, String status) throws Exception{
		
		Pageable pageable = PageRequest.of(rewardPage, 9,
											Sort.by("status").descending()
											.and(Sort.by("achievement").descending())
											.and(Sort.by("deadline").ascending()));
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
		
		return fundingRepository.
				findByCategoryNum2AndStatusContainingAndStartDateLessThanEqual
					(categoryNum, status, today, pageable);
		
	}
	
}
