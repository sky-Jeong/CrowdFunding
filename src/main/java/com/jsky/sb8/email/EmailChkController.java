package com.jsky.sb8.email;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/email/**")
public class EmailChkController {
	
	@Autowired
	private JavaMailSender javaMailSender;
	@Autowired
	private EmailChkService emailChkService;
	
	@PostMapping("confirmChk")
	@ResponseBody
	public ModelAndView getEmailConfirmChk(EmailChkVO emailChkVO) {
		
		ModelAndView mv = new ModelAndView();
		emailChkVO = emailChkService.getEmailConfirmChk(emailChkVO).get();
		
		String result = "fail";
		if (emailChkVO.getConfirmChk().equals("Y")) {
			result = "success";
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
		
	}
	
	@PostMapping("check")
	@ResponseBody
	public ModelAndView getEmailConfirm(EmailChkVO emailChkVO) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println(emailChkVO.getChkNum() + ", " + emailChkVO.getConfirmNum());
		
		long writeNum = emailChkVO.getConfirmNum();
		emailChkVO = emailChkService.getEmailConfirm(emailChkVO).get();
		
		String result = "fail";
		if( writeNum == emailChkVO.getConfirmNum() ) {
			result = "success";
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
		
	}
	
	@PostMapping("emailChk")
	@ResponseBody
	public ModelAndView getEmailChk(EmailChkVO emailChkVO) throws MessagingException, UnsupportedEncodingException {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("email send access");
		
		// 인증 키 생성
		Random random = new Random();
		// (최대값 - 최소값 + 1) + 최소값
		int key = random.nextInt(9999)+1000;
		
		if (emailChkVO.getConfirmChk().equals("Y")) {
			
			Calendar ca = Calendar.getInstance();
			Timestamp today = new Timestamp(ca.getTimeInMillis());
			
			emailChkVO.setSuccessTime(today);
			System.out.println(today);
			
		} else {
			emailChkVO.setConfirmChk("N");
		}
		
		emailChkVO.setEmail(emailChkVO.getEmail());
		emailChkVO.setConfirmNum(key);
		
		emailChkVO = emailChkService.saveEmailChk(emailChkVO);
		
//		SimpleMailMessage message = new SimpleMailMessage();
//		message.setTo(email);
//		message.setSubject("[하디즈] 하디즈 가입 인증 메일");
//		message.setText("회원가입 인증번호는 [ " + key + " ] 입니다.\n입력창에 작성해주세요.");
		
		
		if (emailChkVO != null) {

			MimeMessage msg = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(msg, false, "UTF-8");
			
			helper.setFrom(new InternetAddress("skyjeong1962@gmail.com", "하디즈"));
			helper.setTo(emailChkVO.getEmail());
			helper.setSubject("[하디즈] 하디즈 가입 인증 메일");
			helper.setText("회원가입 인증번호는 [ " + key + " ] 입니다.\n입력창에 작성해주세요.");
	
			javaMailSender.send(msg);
			
		}

		mv.addObject("result", emailChkVO.getChkNum());
		mv.setViewName("common/result");
		return mv;
		
	}

}
