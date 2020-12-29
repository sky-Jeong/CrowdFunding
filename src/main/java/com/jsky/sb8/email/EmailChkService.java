package com.jsky.sb8.email;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmailChkService {

	@Autowired
	private EmailChkRepository emailChkRepository;
	
	public Optional<EmailChkVO> getEmailConfirmChk(EmailChkVO emailChkVO) {
		return emailChkRepository.findById(emailChkVO.getChkNum());
	}
	
	public Optional<EmailChkVO> getEmailConfirm(EmailChkVO emailChkVO) {
		return emailChkRepository.findById(emailChkVO.getChkNum());
	}
	
	public EmailChkVO saveEmailChk(EmailChkVO emailChkVO) {
		return emailChkRepository.save(emailChkVO);
	}
	
}
