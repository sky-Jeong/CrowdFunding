package com.jsky.sb8.project.funding.like;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingService;
import com.jsky.sb8.project.funding.FundingVO;

@Controller
@RequestMapping(value = "/like/**")
public class LikeProjectController {

	@Autowired
	private FundingService fundingService;
	@Autowired
	private LikeProjectService likeProjectService;
	
	@GetMapping("save")
	@ResponseBody
	public String likeSave(@RequestParam long projectNum, @RequestParam int like, 
								HttpSession session, HttpServletRequest request) throws Exception{
		
		FundingVO fundingVO = new FundingVO();
		LikeProjectVO likeProjectVO = new LikeProjectVO();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("login");
		
		fundingVO = fundingService.findById(projectNum).get();
		fundingVO.setPeopleLike(fundingVO.getPeopleLike() + like);
		
		if(like > 0) {

			likeProjectVO.setMemberVO(memberVO);
			likeProjectVO.setFundingVO(fundingVO);
			likeProjectVO = likeProjectService.save(likeProjectVO);
			
		} else {
			
			likeProjectService.setDeleteLike(projectNum ,memberVO.getMemberNum());
			likeProjectVO = null;
			
		}
		
		String result = "'좋아요'를 취소하셨습니다.";
		if(likeProjectVO != null) {
			result = "'좋아요'를 누르셨습니다.";
		}
		
		fundingService.save(fundingVO);
		
		String tmp = request.getHeader("Referer");
		String referUrl = tmp.substring(17);
	
		System.out.println("refer: " + referUrl);

		return result;
		
	}
	
}
