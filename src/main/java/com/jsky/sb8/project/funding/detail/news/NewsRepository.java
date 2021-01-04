package com.jsky.sb8.project.funding.detail.news;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface NewsRepository extends JpaRepository<NewsVO, Long>{

	@Query
	(value = "select count(*) from News where tmpNum = ?1", nativeQuery = true)
	public long getNewsCount(long tmpNum) throws Exception;
	
	public List<NewsVO> findByTmpNumAndCharDivisionContainingOrderByRegDate(long num, String charDivision ) throws Exception;
	
	public List<NewsVO> findByTmpNumAndCharDivisionContainingOrderByRegDateDesc(long num, String charDivision ) throws Exception;
	
}
