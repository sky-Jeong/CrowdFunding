package com.jsky.sb8.funding.like;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.jsky.sb8.member.MemberRepository;
import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingRepository;
import com.jsky.sb8.project.funding.FundingVO;
import com.jsky.sb8.project.funding.like.LikeProjectRepository;
import com.jsky.sb8.project.funding.like.LikeProjectVO;

@SpringBootTest
class LikeRepositoryTest {

	@Autowired
	private LikeProjectRepository likeProjectRepository;
	@Autowired
	private FundingRepository fundingRepository;
	@Autowired
	private MemberRepository memberRepository;
	
	@Test
	void test() throws Exception {
		//this.likeTest();
		this.memberLike();
	}
	
	/**
	 * 로그인 멤버 좋아요 누른 게시물 체크
	 */
	private void memberLike() throws Exception{
		
		MemberVO memberVO = memberRepository.findById(63L).get();
		
		List<LikeProjectVO> list = memberVO.getLikeProjectVOs();
		System.out.println("-----------------------------------------");
		for(LikeProjectVO vo:list) {
			System.out.println("좋아요 누른 프로젝트: " + vo.getFundingVO().getNum() + " - " + vo.getFundingVO().getTitle());
			if(vo.getFundingVO().getNum() == 4) {
				System.out.println("좋아요 누른 펀딩 상세 페이지에 들어오셨습니다.");
			}
		}
		
	}
	
	/**
	 * like test success
	 */
	private void likeTest() throws Exception {
		
		MemberVO memberVO = new MemberVO();
		memberVO.setMemberNum(63);
		
		FundingVO fundingVO = new FundingVO();
		fundingVO.setNum(4);
		
		LikeProjectVO likeProjectVO = new LikeProjectVO();
		likeProjectVO.setMemberVO(memberVO);
		likeProjectVO.setFundingVO(fundingVO);
		
		int plus = 1;
		fundingVO = fundingRepository.findById(fundingVO.getNum()).get();
		fundingVO.setPeopleLike(fundingVO.getPeopleLike() + plus);
		
		if(plus > 0) {
			likeProjectRepository.save(likeProjectVO);
		} else {
			likeProjectRepository.setDeleteLike(memberVO.getMemberNum(), 1);
		}
		
		fundingRepository.save(fundingVO);
		
	}

}
