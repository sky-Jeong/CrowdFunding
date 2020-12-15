package com.jsky.sb8.project.category;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CategoryRepository extends JpaRepository<CategoryVO, Long>{

	public List<CategoryVO> findByCharDivision(String charDivision, Pageable pageRequest) throws Exception;
	
	@Query("select count(*) from Category where charDivision=?1")
	public long findAllByCharDivision(String charDivision) throws Exception;
	
}
