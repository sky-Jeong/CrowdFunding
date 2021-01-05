package com.jsky.sb8.project.funding.like;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface LikeProjectRepository extends JpaRepository<LikeProjectVO, Long>{

	@Modifying
	@Transactional
	@Query(value = "delete from LikeProject where memberNum=?1", nativeQuery = true)
	public void setDeleteLike(long memberNum) throws Exception;
	
}
