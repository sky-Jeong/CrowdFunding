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
	
	public Page<FundingVO> findAllCategory() throws Exception{
		Pageable pageable = PageRequest.of(0, 9);
		return fundingRepository.findAll(pageable);
	}
	
}
