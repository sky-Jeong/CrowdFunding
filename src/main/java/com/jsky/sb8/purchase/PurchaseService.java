package com.jsky.sb8.purchase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PurchaseService { 
	
	@Autowired
	private PurchaseRepository purchaseRepository;
	
	public PurchaseVO save(PurchaseVO purchaseVO) throws Exception{
		return purchaseRepository.save(purchaseVO);
	}

}
