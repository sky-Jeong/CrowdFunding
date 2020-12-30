package com.jsky.sb8.project.faq;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface FaqRepository extends JpaRepository<FaqVO, Long>{
	
//	public List<FaqVO> findByProjectNum(long projectNum);

}
