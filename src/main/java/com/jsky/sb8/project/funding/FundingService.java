package com.jsky.sb8.project.funding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class FundingService {

	@Autowired
	private FundingRepository fundingRepository;
	
	public Page<FundingVO> findAllCategory(String status, int rewardPage) throws Exception{
		Pageable pageable = PageRequest.of(rewardPage, 9);
		return fundingRepository.findByStatusContaining(status, pageable);
	}
	
	public Page<FundingVO> findCategory(int categoryNum,int rewardPage, String status) throws Exception{
		Pageable pageable = PageRequest.of(rewardPage, 9);
		return fundingRepository.findByCategoryNum2AndStatusContaining(categoryNum, status, pageable);
	}
	
}
