package com.jsky.sb8.myPage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.member.MemberService;
import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.purchase.PurchaseService;
import com.jsky.sb8.purchase.PurchaseVO;
import com.jsky.sb8.purchase.info.PurchaseInfoService;
import com.jsky.sb8.purchase.info.PurchaseInfoVO;

@Controller
@RequestMapping(value = "/mypage/**")
public class MyPageController {
	
	@Autowired
	private PurchaseInfoService purchaseInfoService;
	@Autowired
	private MemberService memberService;
	
	@GetMapping("mywadiz")
	public ModelAndView getWadiz(HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("member/myPage/mywadiz");
		return mv;
		
	}
	
	@GetMapping("myfunding/rewardfundinglist")
	public ModelAndView getMyRewardFundingList(HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		MemberVO memberVO = (MemberVO)session.getAttribute("login");
		memberVO = memberService.findById(memberVO.getMemberNum());
		
		System.out.println(memberVO.getMemberName() + ", " + memberVO.getEmail());
		
		mv.addObject("purchase", memberVO);
		mv.setViewName("member/myPage/myreward");
		return mv;
		
	}

	@GetMapping("myfunding/purchase/{purchaseInfoNum}")
	public ModelAndView getMyPurchasePage(@PathVariable long purchaseInfoNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		PurchaseInfoVO purchaseInfoVO = purchaseInfoService.findById(purchaseInfoNum);
		
		mv.addObject("purchaseInfo", purchaseInfoVO);
		mv.setViewName("member/myPage/purchase");
		return mv;
		
	}
	
}
