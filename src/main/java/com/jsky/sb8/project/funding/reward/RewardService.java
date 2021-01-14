package com.jsky.sb8.project.funding.reward;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RewardService {

	@Autowired
	private RewardRepository rewardRepository;
	
	public Optional<RewardVO> findById(long id) throws Exception{
		return rewardRepository.findById(id);
	}

	public RewardVO save(RewardVO rewardVO) throws Exception{
		return rewardRepository.save(rewardVO);
	}
	
	
}
