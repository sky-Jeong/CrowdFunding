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

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.detail.community.CommunityService;
import com.jsky.sb8.project.funding.detail.news.NewsService;
import com.jsky.sb8.project.funding.like.LikeProjectService;
import com.jsky.sb8.project.funding.like.LikeProjectVO;
import com.jsky.sb8.project.supporter.SupporterService;


@Controller
@RequestMapping(value = "/funding/**")
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
	
	private long projectNum = 0;
	
	private boolean getMember(MemberVO memberVO) {
		
		// 로그인한 멤버가 좋아요 누른 프로젝트 확인
		if(memberVO != null) {
			System.out.println("login member: " + memberVO.getEmail());
			return this.chkLikeProject(memberVO, this.projectNum);			
		}
		
		return false;
		
	}
	
	/**
	 * 좋아요 누른 프로젝트 확인
	 */
	private boolean chkLikeProject(MemberVO memberVO, long num) {
		
		List<LikeProjectVO> list = memberVO.getLikeProjectVOs();
		for (LikeProjectVO vo : list) {
			System.out.println(vo.getFundingVO().getNum() + ", " + vo.getMemberVO().getMemberName());
			if(vo.getFundingVO().getNum() == num) {
				return true;
			}
		}
		return false;
		
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
		
		boolean likeProject = false;
		
		this.projectNum = num;
		
		ModelAndView mv = new ModelAndView();
		FundingVO fundingVO = fundingService.findById(num).get();

		if(menu.equals("community")) {
			count = communityService.getCommentCount(num);
		} else if (menu.equals("news")){
			count = newsService.getNewsCount(num);
		}
		 
		MemberVO memberVO = (MemberVO) session.getAttribute("login");
		likeProject = this.getMember(memberVO);
		
		supporterCount = supporerService.getSupporterCount(num);
		
		mv.addObject("supporterCount", supporterCount);
		mv.addObject("like", likeProject);
		mv.addObject("count", count);
		mv.addObject("info", fundingVO);
		mv.setViewName("reward/detail/"+menu);
		return mv;
		
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
