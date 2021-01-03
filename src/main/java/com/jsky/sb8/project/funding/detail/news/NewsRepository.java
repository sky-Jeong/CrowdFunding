package com.jsky.sb8.project.funding.detail.news;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsRepository extends JpaRepository<NewsVO, Long>{

	public List<NewsVO> findByTmpNumAndCharDivisionContaining(long num, String charDivision ) throws Exception;
	
}
