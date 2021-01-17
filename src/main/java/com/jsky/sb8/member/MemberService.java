package com.jsky.sb8.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsky.sb8.email.EmailChkRepository;

@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;
	
	public MemberVO saveMember(MemberVO memberVO) throws Exception{
		return memberRepository.save(memberVO);
	}
	
	public MemberVO findById(long id) throws Exception{
		return memberRepository.findById(id).get();
	}
	
	public MemberVO findByEmail(String email) throws Exception {
		return memberRepository.findByEmail(email);
	}
	
	public MemberVO memberLogin(MemberVO memberVO) throws Exception{
		return memberRepository.findByEmailAndPassword(memberVO.getEmail(), memberVO.getPassword());
	}
	
}
