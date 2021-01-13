package com.jsky.sb8.purchase;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParser;
import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingService;
import com.jsky.sb8.project.funding.FundingVO;
import com.jsky.sb8.project.funding.reward.RewardService;
import com.jsky.sb8.project.funding.reward.RewardVO;
import com.jsky.sb8.project.supporter.SupporterVO;
import com.jsky.sb8.purchase.info.PurchaseInfoVO;

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
	@PostMapping("buy")
	public ModelAndView setPurchase(PurchaseInfoVO purchaseInfoVO, HttpSession session, 
									SupporterVO supporterVO,
									Long[] orderQuantity, Long[] productNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
		
	}

	/**
	 * purchase 페이지 이동
	 * 	- step 2로 이동시 post 요청도 받기 위함
	 */
	@RequestMapping(value = "reward/{step}/{projectNum}",
					method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getPurchasePage(@PathVariable long projectNum, @PathVariable String step,
										Long productNum,
										Long[] rewardNum, Long[] orderQuantity, SupporterVO supporterVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		FundingVO fundingVO = this.getFundingProject(projectNum);

		// step 1 페이지 이동
		if(step.equals("step1")) {
			
			/*
			 *  2021.01.12 
			 *  	[Update] detail 페이지에서 productNumm을 선택하고 이동할시 프론트에 표기하기 위함
			 */
			mv.addObject("productNum", productNum);
		
		} else if (step.equals("step2")) {
			mv = this.getPurchasePageStep2(rewardNum, orderQuantity, supporterVO);
		}
		
		mv.addObject("voList", fundingVO);
		mv.setViewName("purchase/reward-" + step);
		return mv;
		
	}
	
	/**
	 * purchase Project 데이터 받아오기
	 */
	private FundingVO getFundingProject(long projectNum) throws Exception{
		FundingVO fundingVO = fundingService.findById(projectNum).get();
		return fundingVO;
	}
	
	/**
	 * purchase step 2 Return Response data
	 */
	private ModelAndView getPurchasePageStep2(Long[] rewardNum, Long[] orderQuantity, SupporterVO supporterVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		long totalAmount = 0;
		int totalShippingFee = 0;
		
		int forLastNum = rewardNum.length;
		List<PurchaseVO> purchaseVOs = new ArrayList<PurchaseVO>();
		
		// vo에 값 할당하기 위함
		for(int index = 0; index < forLastNum; index++) {
			
			long quantity = orderQuantity[index];
			
			PurchaseVO purchaseVO = new PurchaseVO();			
			RewardVO rewardVO = rewardService.findById(rewardNum[index]).get();
			
			totalAmount = totalAmount + ( quantity * rewardVO.getAmount() );
			totalShippingFee = rewardVO.getShippingFee();

			purchaseVO.setRewardVO(rewardVO);
			purchaseVO.setAmount( quantity * rewardVO.getAmount() );
			purchaseVO.setOrderQuantity( quantity );
			
			purchaseVOs.add(purchaseVO);
			
		}

		DecimalFormat df = new DecimalFormat("#,###");
		long finalAmount = totalAmount + totalShippingFee;
		
		String totalShippingFeeStr = df.format(totalShippingFee);
		String totalAmountStr = df.format(totalAmount);
		String finalAmountStr = df.format(finalAmount);
		
		mv.addObject("finalAmount", finalAmount);
		mv.addObject("finalAmountStr", finalAmountStr);
		
		mv.addObject("totalAmount", totalAmount);
		mv.addObject("totalAmountStr", totalAmountStr);
		
		mv.addObject("shippingFee", totalShippingFee);
		mv.addObject("shippingFeeStr", totalShippingFeeStr);
		
		mv.addObject("openChk", supporterVO);
		mv.addObject("orderList", purchaseVOs);
		return mv;
		
	}

	
	/**
	 * purchase step 1 Return Response data
	 * 	2021.01.12 - 공통 데이터만 전달해 해당 메소드 주석처리
	 */
	/*
	private ModelAndView getPurchasePageStep1(long projectNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		FundingVO fundingVO = this.getFundingProject(projectNum);
		mv.addObject("voList", fundingVO);
		return mv;
		
	} */
	
}
