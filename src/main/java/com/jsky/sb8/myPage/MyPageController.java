package com.jsky.sb8.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.purchase.info.PurchaseInfoService;
import com.jsky.sb8.purchase.info.PurchaseInfoVO;

@Controller
@RequestMapping(value = "/mypage/**")
public class MyPageController {
	
	@Autowired
	private PurchaseInfoService purchaseInfoService;

	@GetMapping("myfunding/purchase/{purchaseInfoNum}")
	public ModelAndView getMyPurchasePage(@PathVariable long purchaseInfoNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		PurchaseInfoVO purchaseInfoVO = purchaseInfoService.findById(purchaseInfoNum);
		
		mv.addObject("purchaseInfo", purchaseInfoVO);
		mv.setViewName("member/myPage/purchase");
		return mv;
		
	}
	
}
