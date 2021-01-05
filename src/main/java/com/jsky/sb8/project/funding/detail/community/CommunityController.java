package com.jsky.sb8.project.funding.detail.community;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingVO;

import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/comu/**")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	/**
	 * reply write
	 */
	@PostMapping("reply/enter")
	public ModelAndView setReply(@RequestParam long ref, HttpSession session,
									CommunityVO communityVO, HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();

		FundingVO fundingVO = new FundingVO();
		MemberVO memberVO = (MemberVO) session.getAttribute("login");

		System.out.println("writeNum(=ref) : " + ref + ", session: " + memberVO.getMemberName() + 
							"contents: " + communityVO.getContents());
		
		fundingVO.setNum(communityVO.getTmpNum());
		
		communityVO.setWriteNum(null);
		communityVO.setRef(ref);
		communityVO.setFundingVO(fundingVO);
		communityVO.setWriter(memberVO.getMemberNum());
		communityVO.setMemberVO(memberVO);
		
		communityVO = communityService.setReply(communityVO);
		
		String result = "답글 달기를 실패하였습니다.";
		String path = request.getHeader("Referer");
		path = "/"+path.substring(17);
		
		System.out.println("refer: " + path);
		mv.setViewName(path);
		
		if(communityVO != null) {
			result = "답글 달기를 성공하였습니다.";
			mv.addObject("path", path);
			mv.setViewName("common/signResult");
		}
		
		mv.addObject("result", result);
		return mv;
		
	}
	
	/**
	 * get Reply list
	 */
	@GetMapping("reply")
	@ResponseBody
	public ModelAndView getReplyList(@RequestParam long writeNum) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<CommunityVO> communityVOs = communityService.getReplyList(writeNum, 1);
		
		mv.addObject("writeNum", writeNum);
		mv.addObject("reply", communityVOs);
		mv.setViewName("reward/detail/ajaxResult/comu-reply");
		return mv;
		
	}
	
	/**
	 * get Comment list
	 */
	@GetMapping("list")
	@ResponseBody
	public ModelAndView getCommentList(@RequestParam long tmpNum) throws Exception{
		
		System.out.println("access comu controller");
		ModelAndView mv = new ModelAndView();
		
		List<CommunityVO> communityVOs = communityService.getCommentList(tmpNum, 0);
		
		mv.addObject("comment", communityVOs);
		mv.setViewName("reward/detail/ajaxResult/comu-comment");
		return mv;
		
	}
	
}
