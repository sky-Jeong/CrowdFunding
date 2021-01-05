package com.jsky.sb8.project.supporter;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SupporterRepository extends JpaRepository<SupporterVO, Long>{

	@Query
	(value = "select count(*) from Supporter where projectNum = ?1", nativeQuery = true)
	public long getSupporterCount(long projectNum) throws Exception;
	
}
