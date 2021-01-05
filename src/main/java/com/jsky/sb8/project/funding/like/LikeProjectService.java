package com.jsky.sb8.project.funding.like;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LikeProjectService {

	@Autowired
	private LikeProjectRepository likeProjectRepository;
	
	public void setDeleteLike(long memberNum) throws Exception{
		likeProjectRepository.setDeleteLike(memberNum);
	}
	
	public LikeProjectVO save(LikeProjectVO likeProjectVO) throws Exception{
		return likeProjectRepository.save(likeProjectVO);
	}

}
