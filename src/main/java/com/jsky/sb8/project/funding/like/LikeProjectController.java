package com.jsky.sb8.project.funding.like;

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
	public ModelAndView likeSave(@RequestParam long projectNum, @RequestParam int like, HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
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
			
			likeProjectService.setDeleteLike(memberVO.getMemberNum());
			likeProjectVO = null;
			
		}
		
		String result = "'좋아요'를 취소하셨습니다.";
		if(likeProjectVO != null) {
			result = "'좋아요'를 누르셨습니다.";
		}
		
		fundingService.save(fundingVO);
		
		mv.addObject("result", result);
		mv.addObject("path","/funding/detail/main/"+fundingVO.getNum());
		mv.setViewName("common/signResult");
		return mv;
		
	}
	
}
