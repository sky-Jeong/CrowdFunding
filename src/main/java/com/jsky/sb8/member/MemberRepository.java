package com.jsky.sb8.member;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MemberRepository extends JpaRepository<MemberVO, Long>{
	
	public MemberVO findByEmail(String email) throws Exception;
	
	public MemberVO findByEmailAndPassword(String email, String password) throws Exception;

}
