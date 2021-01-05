package com.jsky.sb8.project.supporter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SupporterService {

	@Autowired
	private SupporterRepository supporterRepository;
	
	public long getSupporterCount(long projectNum) throws Exception{
		return supporterRepository.getSupporterCount(projectNum);
	}
	
}
