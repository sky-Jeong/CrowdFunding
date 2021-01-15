package com.jsky.sb8.purchase.info;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsky.sb8.purchase.PurchaseRepository;

@Service
public class PurchaseInfoService {

	@Autowired
	private PurchaseInfoRepository purchaseInfoRepository;
	
	public void setBuyerInfoUpdateService(PurchaseInfoVO purchaseInfoVO) throws Exception{
		
		String total_addr = purchaseInfoVO.getBuyer_addr() + " " + purchaseInfoVO.getBuyer_addr_detail();
		System.out.println("access puchase info service : " + total_addr);
		
		purchaseInfoRepository
			.setBuyerInfoUpdate(purchaseInfoVO.getBuyer_name(),
								purchaseInfoVO.getBuyer_tel(),
								purchaseInfoVO.getBuyer_addr(),
								purchaseInfoVO.getBuyer_addr_detail(),
								total_addr,
								purchaseInfoVO.getCustom_data(),
								purchaseInfoVO.getBuyer_postcode(),
								purchaseInfoVO.getOrderNum());
		
	}
	
	public PurchaseInfoVO save(PurchaseInfoVO purchaseInfoVO) throws Exception{
		return purchaseInfoRepository.save(purchaseInfoVO);
	}

	public PurchaseInfoVO findById(long purchaseInfoNum) throws Exception{
		return purchaseInfoRepository.findById(purchaseInfoNum).get();
	}
	
}
