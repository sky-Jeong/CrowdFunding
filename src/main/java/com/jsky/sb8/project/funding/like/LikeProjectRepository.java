package com.jsky.sb8.project.funding.like;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface LikeProjectRepository extends JpaRepository<LikeProjectVO, Long>{

	@Modifying
	@Transactional
	@Query(value = "delete from LikeProject where projectNum=?1 and memberNum=?2", nativeQuery = true)
	public void setDeleteLike(long projectNum,long memberNum) throws Exception;
	
	/**
	 * 좋아요 누른 프로젝트 확인 위함
	 * 		현제 로그인한 멤버의 정보로 체크할 경우 바로 반영이 안되는 에러 발생으로 DB에서 조회
	 */
	@Query(value = "select * from LikeProject where projectNum=?1 and memberNum=?2", nativeQuery = true)
	public LikeProjectVO getLikeProject(long projectNum, long memberNum) throws Exception;
	
	/**
	 * 로그인한 멤버의 좋아요 누른 개수 리턴
	 */
	@Query(value = "select count(*) from LikeProject where memberNum=?1", nativeQuery = true)
	public long getLikeCount(long memberNum) throws Exception;
	
}
