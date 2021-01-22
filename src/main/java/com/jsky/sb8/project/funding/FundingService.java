package com.jsky.sb8.project.funding;

import java.sql.Date;
import java.util.Calendar;
import java.util.Optional;

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
	
	/**
	 * 저장 및 업데이트
	 */
	public FundingVO save(FundingVO fundingVO) throws Exception{
		return fundingRepository.save(fundingVO);
	}
	
	/**
	 * 선택한 프로젝트 내용보기
	 */
	public Optional<FundingVO> findById(long num) throws Exception{
		return fundingRepository.getProjectSupporterSort(num);
	}
	
	/**
	 * 오픈예정 프로젝트 받아보기
	 */
	public Page<FundingVO> findByStartDateGreaterThan(int rewardPage) throws Exception{
		
		Pageable pageable = PageRequest.of(rewardPage, 9);
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
		
		return fundingRepository.findByStartDateGreaterThanOrderByStartDate(today, pageable);
		
	}
	
	/**
	 * 오픈 예정을 제외한 프로젝트 전체보기
	 */
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
	
	/**
	 * 선택한 카테고리와 프로젝트 상태를 기준으로 프로젝트 리스트 보기
	 */
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
