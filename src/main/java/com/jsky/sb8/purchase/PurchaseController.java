package com.jsky.sb8.purchase;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.project.funding.FundingService;
import com.jsky.sb8.project.funding.FundingVO;
import com.jsky.sb8.project.funding.reward.RewardService;
import com.jsky.sb8.project.funding.reward.RewardVO;
import com.jsky.sb8.project.supporter.SupporterVO;

@Controller
@RequestMapping(value = "/purchase/**")
public class PurchaseController {

	@Autowired
	private PurchaseService purchaseService;
	@Autowired
	private FundingService fundingService;
	@Autowired
	private RewardService rewardService;
	
	/**
	 * 주문하기
	 * 	- insert DB : purchase, supporter,purcahseInfo
	 * 		- supporter : 이름 공개 및 금액 공개 여부 ,토탈 금액
	 * 	- update DB
	 * 		- fundingReward : quantity
	 */
	@PostMapping("order")
	public ModelAndView setPurchase(long[] productNum, PurchaseVO purchaseVO,
									SupporterVO supporterVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();

		
		return mv;
		
	}
	
	/**
	 * purchase 페이지 이동
	 */
	@GetMapping("reward/{step}/{projectNum}")
	public ModelAndView getPurchasePage(@PathVariable long projectNum, @PathVariable String step,
										Long productNum) throws Exception {
		
		ModelAndView mv = new ModelAndView();

		mv = this.getPurchasePageStep1(projectNum);

		mv.addObject("productNum", productNum);
		mv.setViewName("purchase/reward-" + step);
		return mv;
		
	}
	
	@PostMapping("reward/step2")
	public ModelAndView getPurchasePageStep2(PurchaseVO purchaseVO, SupporterVO supporterVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		System.out.println(purchaseVO);
		System.out.println(purchaseVO.getOrderQuantity());
		

		
		mv.setViewName("purchase/reward-step2");
		return mv;
		
	}
	
	private ModelAndView getPurchasePageStep1(long projectNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		FundingVO fundingVO = fundingService.findById(projectNum).get();
		
		mv.addObject("voList", fundingVO);
		return mv;
		
	}
	
	private ModelAndView getPurchasePageStep2(ArrayList<PurchaseVO> purchaseVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Long> nums = new ArrayList<>();

		
		Iterable<Long> ids = nums;
		List<RewardVO> rewardVOs = rewardService.findAllById(ids);
		
		for(RewardVO vo : rewardVOs) {
			
		}
		
		FundingVO fundingVO = fundingService.findById(4).get();
		
		mv.addObject("voList", fundingVO);
		mv.addObject("list", rewardVOs);
		return mv;
		
	}
	
}
