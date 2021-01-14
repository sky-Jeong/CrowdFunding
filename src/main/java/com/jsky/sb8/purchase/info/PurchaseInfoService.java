package com.jsky.sb8.purchase.info;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsky.sb8.purchase.PurchaseRepository;

@Service
public class PurchaseInfoService {

	@Autowired
	private PurchaseInfoRepository purchaseInfoRepository;
	
	public PurchaseInfoVO save(PurchaseInfoVO purchaseInfoVO) throws Exception{
		return purchaseInfoRepository.save(purchaseInfoVO);
	}
	
}
