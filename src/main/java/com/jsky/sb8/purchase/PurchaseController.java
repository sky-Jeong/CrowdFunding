package com.jsky.sb8.purchase;

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
	@PostMapping("order/{projectNum}")
	@ResponseBody
	public ModelAndView setPurchaseData(HttpSession session, @RequestBody List<Map<String, Object>> parameters,
										@PathVariable long projectNum) throws Exception{
	
		System.out.println("요 며칠 진짜 스트레스 개오지네 개같은거");
		ModelAndView mv = new ModelAndView();
		
		String nameYN = "";
		String amountYN = "";
		
		ArrayList<PurchaseVO> purchaseVOs = new ArrayList<>();
		MemberVO login = (MemberVO) session.getAttribute("login");
		
		FundingVO fundingVO = fundingService.findById(projectNum).get();
		
		for (Map<String, Object> map : parameters) {
		
			System.out.println("데이터: " + map.toString());
			
			nameYN = map.get("nameYN").toString();
			amountYN = map.get("amountYN").toString();
			
			PurchaseVO purchaseVO = new PurchaseVO();			
			RewardVO rewardVO = rewardService.findById(Long.parseLong((String) map.get("productNum"))).get();

			if(map.get("option") == null) {
				purchaseVO.setOption("");
			} else {
				purchaseVO.setOption(map.get("option").toString());
			}
			
			purchaseVO.setOrderQuantity( Long.parseLong(map.get("orderQuantity").toString()) );			
			
			purchaseVO.setMemberVO(login);
			purchaseVO.setRewardVO(rewardVO);
			
			purchaseVOs.add(purchaseVO);

		}

		mv.addObject("nameYN", nameYN);
		mv.addObject("amountYN", amountYN);
		
		mv.addObject("voList", fundingVO);
		mv.addObject("orderList", purchaseVOs);
		
		mv.setViewName("purchase/reward-step2");
		return mv;
		
	}
	
	/**
	 * purchase 페이지 이동
	 */
	@RequestMapping(value = "reward/{step}/{projectNum}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getPurchasePage(@PathVariable long projectNum, @PathVariable String step,
										Long productNum) throws Exception {
		
		ModelAndView mv = new ModelAndView();

		mv = this.getPurchasePageStep1(projectNum);

		mv.addObject("productNum", productNum);
		mv.setViewName("purchase/reward-" + step);
		return mv;
		
	}
	
	private ModelAndView getPurchasePageStep1(long projectNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		FundingVO fundingVO = fundingService.findById(projectNum).get();
		
		mv.addObject("voList", fundingVO);
		return mv;
		
	}
	
//	private ModelAndView getPurchasePageStep2(ArrayList<PurchaseVO> purchaseVO) throws Exception{
//		
//		ModelAndView mv = new ModelAndView();
//		
//		ArrayList<Long> nums = new ArrayList<>();
//
//		
//		Iterable<Long> ids = nums;
//		List<RewardVO> rewardVOs = rewardService.findAllById(ids);
//		
//		for(RewardVO vo : rewardVOs) {
//			
//		}
//		
//		FundingVO fundingVO = fundingService.findById(4).get();
//		
//		mv.addObject("voList", fundingVO);
//		mv.addObject("list", rewardVOs);
//		return mv;
//		
//	}
	
}
