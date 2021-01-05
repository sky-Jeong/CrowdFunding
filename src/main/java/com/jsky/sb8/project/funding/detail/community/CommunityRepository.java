package com.jsky.sb8.project.funding.detail.community;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommunityRepository extends JpaRepository<CommunityVO, Long>{

	@Query
	(value = "select tmp.*\n"
			+ "from ( select * from Community\n"
			+ "	where tmpNum = ?1 and step = ?2\n"
			+ "	order by regDate) as tmp\n"
			+ "order by ref ASC, step ASC", nativeQuery = true)
	public List<CommunityVO> getComment(long tmpNum, long step) throws Exception;
	
	@Query
	(value = "select count(*) from Community where tmpNum = ?1", nativeQuery = true)
	public long getCommentCount(long tmpNum) throws Exception;
	
	public List<CommunityVO> findByRefAndStepOrderByRegDate(long ref, long step) throws Exception;
	
}
