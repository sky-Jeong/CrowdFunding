package com.jsky.sb8.project.funding.reward;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RewardService {

	@Autowired
	private RewardRepository rewardRepository;
	
	public List<RewardVO> findAllById(Iterable<Long> ids) throws Exception{
		return rewardRepository.findAllById(ids);
	}
	
	
}
