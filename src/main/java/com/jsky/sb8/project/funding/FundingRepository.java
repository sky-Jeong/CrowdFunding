package com.jsky.sb8.project.funding;

import java.sql.Date;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface FundingRepository extends JpaRepository<FundingVO, Long>{
	
	public Page<FundingVO> findByStartDateGreaterThanOrderByStartDate(Date today, Pageable pageable);
	
	public Page<FundingVO> findByStatusContainingAndStatusNotOrderByAchievementDesc(String status, String ignore,Pageable pageable);
	
	public Page<FundingVO> findByCategoryNum2AndStatusContainingOrderByAchievementDesc(long categoryNum,String status,Pageable pageable);

}
