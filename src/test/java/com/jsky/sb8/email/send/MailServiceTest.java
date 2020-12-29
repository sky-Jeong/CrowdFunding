package com.jsky.sb8.email.send;

import static org.junit.jupiter.api.Assertions.*;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

@SpringBootTest
class MailServiceTest {
	
	@Value("${spring.mail.username}")
	private String username;
	
	@Value("${spring.mail.password}")
	private String password;
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	@Test
	void test() throws UnsupportedEncodingException, MessagingException {
		sendMailTest();
	}
	
	private void sendMailTest() throws UnsupportedEncodingException, MessagingException {
		
		System.out.println(username);
		System.out.println(password);

		MimeMessage msg = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(msg, false, "UTF-8");
		
		helper.setFrom(new InternetAddress("skyjeong1962@gmail.com", "하디즈"));
		helper.setTo("cat2978@kakao.com");
		helper.setSubject("[하디즈] 하디즈 가입 인증 메일");
		helper.setText("회원가입 인증번호는 [ " + 1234 + " ] 입니다.\n입력창에 작성해주세요.");

		javaMailSender.send(msg);
		
	}

}
