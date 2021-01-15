package com.jsky.sb8.purchase.info;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface PurchaseInfoRepository extends JpaRepository<PurchaseInfoVO, Long>{

	@Modifying
	@Transactional
	@Query(value = "update PurchaseInfo "
					+ "set buyer_name=?1, buyer_tel=?2, buyer_addr=?3, buyer_addr_detail=?4, total_addr=?5, custom_data=?6, buyer_postcode=?7 "
					+ "where orderNum=?8"
			, nativeQuery = true)
	public void setBuyerInfoUpdate(String buyer_name, String buyer_tel, String buyer_addr,
									String buyer_addr_detail, String total_addr, String custom_data,
									String postcode, Long purchaseInfoNum);
	
}
