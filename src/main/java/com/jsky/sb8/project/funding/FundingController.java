package com.jsky.sb8.project.funding;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.member.MemberService;
import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.category.CategoryService;
import com.jsky.sb8.project.category.CategoryVO;
import com.jsky.sb8.project.funding.detail.community.CommunityService;
import com.jsky.sb8.project.funding.detail.news.NewsService;
import com.jsky.sb8.project.funding.like.LikeProjectService;
import com.jsky.sb8.project.funding.like.LikeProjectVO;
import com.jsky.sb8.project.supporter.SupporterService;


@Controller
@RequestMapping(value = {"/funding/**","/studio/**"})
public class FundingController {
	
	@Autowired
	private FundingService fundingService;
	@Autowired
	private CommunityService communityService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private SupporterService supporerService;
	@Autowired
	private LikeProjectService likeProjectService;
	@Autowired
	private CategoryService categoryService;
	
	/**
	 * Funding 만들기 스튜디오
	 */
	@GetMapping("rewardRegistration")
	public ModelAndView getRegistrationPage() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		List<CategoryVO> category = categoryService.findAllCategory();
		
		mv.addObject("category", category);
		mv.setViewName("studio/rewardRegistration");
		return mv;
		
	}

	/**
	 * Funding main 페이지
	 */
	@GetMapping("main")
	public ModelAndView getMainPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reward/main");
		return mv;		
	}
	
	/**
	 * 카테고리 리스트 받아오기
	 */
	@GetMapping("category")
	public ModelAndView getCategoryPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reward/category");
		return mv;		
	}
	
	/**
	 * 프로젝트 상세정보 메인
	 */
	@GetMapping("detail/{menu}/{num}")
	public ModelAndView getCategorySelect(@PathVariable String menu, @PathVariable long num, HttpSession session) throws Exception {
		
		long count = 0;
		long supporterCount = 0;
		boolean likePageChk = false;
		
		ModelAndView mv = new ModelAndView();
		
		MemberVO memberVO = (MemberVO)session.getAttribute("login");
		FundingVO fundingVO = fundingService.findById(num).get();

		if(menu.equals("community")) {
			count = communityService.getCommentCount(num);
		} else if (menu.equals("news")){
			count = newsService.getNewsCount(num);
		}
		
		likePageChk = this.chkLikeProject(num, memberVO);
		supporterCount = supporerService.getSupporterCount(num);
		
		mv.addObject("info", fundingVO);
		mv.addObject("like", likePageChk);
		
		mv.addObject("count", count);
		mv.addObject("supporterCount", supporterCount);
		
		mv.setViewName("reward/detail/"+menu);
		return mv;
		
	}
	
	/**
	 * 좋아요 누른 프로젝트 확인
	 */
	private boolean chkLikeProject(long projectNum, MemberVO memberVO) throws Exception{
		
		boolean result = false;
		LikeProjectVO likeProjectVO = new LikeProjectVO();
		
		if(memberVO != null) {

			likeProjectVO = likeProjectService.getLikeProject(projectNum, memberVO.getMemberNum());
			
			if(likeProjectVO != null) {
				result = true;
			}
			
		}
		
		return result;
		
	}
	
	/**
	 * 오픈 예정 펀딩 프로젝트 메인페이지
	 */
	@GetMapping("comingsoon")
	public ModelAndView getComingSoonPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reward/comingsoon");
		return mv;		
	}
	
	/**
	 * 오픈 예정 프로젝트 리스트 받아오기
	 */
	@GetMapping("comingsoon/list")
	@ResponseBody
	public ModelAndView getList(@RequestParam int rewardPage) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		Page<FundingVO> fundingVOs = fundingService.findByStartDateGreaterThan(rewardPage);
		
		mv.addObject("funding", fundingVOs);
		mv.setViewName("reward/ajaxResult/comingsoon-list");
		return mv;
		
	}
		
	/**
	 * 펀딩 리스트 받아오기
	 */
	@GetMapping("list")
	@ResponseBody
	public ModelAndView getList(@RequestParam int rewardPage, int categoryNum, String status) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		Page<FundingVO> fundingVOs = null; 
		System.out.println("categoryNum: " + categoryNum + ", status: " + status);
		
		if(categoryNum <= 1) {
			System.out.println("total page import ------------------");
			fundingVOs = fundingService.findAllCategory(status, rewardPage);
		} else {
			fundingVOs = fundingService.findCategory(categoryNum, rewardPage, status);
		}
		
		mv.addObject("funding", fundingVOs);
		mv.setViewName("reward/ajaxResult/list");
		return mv;
		
	}
	
}
