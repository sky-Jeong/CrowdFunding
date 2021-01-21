package com.jsky.sb8.myPage;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsky.sb8.project.funding.like.LikeProjectRepository;
import com.jsky.sb8.purchase.info.PurchaseInfoRepository;

@Service
public class MyPageService {

	@Autowired
	private LikeProjectRepository likeProjectRepository;
	@Autowired
	private PurchaseInfoRepository purchaseInfoRepository;
	
	public HashMap<String, Long> getCountList(long memberNum) throws Exception{
		
		HashMap<String, Long> map = new HashMap<>();
		
		long count = likeProjectRepository.getLikeCount(memberNum);
		map.put("like", count);
		
		count = purchaseInfoRepository.getPurchaseCount(memberNum);
		map.put("purchase", count);
		
		return map;
		
	}
	
}
