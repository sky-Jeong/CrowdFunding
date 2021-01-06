package com.jsky.sb8.project.funding.like;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LikeProjectService {

	@Autowired
	private LikeProjectRepository likeProjectRepository;
	
	public LikeProjectVO getLikeProject(long projectNum, long memberNum) throws Exception{
		return likeProjectRepository.getLikeProject(projectNum, memberNum);
	}
	
	public void setDeleteLike(long projectNum,long memberNum) throws Exception{
		likeProjectRepository.setDeleteLike(projectNum,memberNum);
	}
	
	public LikeProjectVO save(LikeProjectVO likeProjectVO) throws Exception{
		return likeProjectRepository.save(likeProjectVO);
	}

}
