package com.jsky.sb8.project.funding;

import java.sql.Date;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface FundingRepository extends JpaRepository<FundingVO, Long>{
	
	public Page<FundingVO> findByStartDateGreaterThan(Date today, Pageable pageable);
	
	public Page<FundingVO> findByStatusContaining(String status, Pageable pageable);
	
	public Page<FundingVO> findByCategoryNum2AndStatusContaining(long categoryNum,String status,Pageable pageable);

}
