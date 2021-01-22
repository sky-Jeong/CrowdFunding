package com.jsky.sb8.project.supporter;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingVO;

import lombok.Data;

@Data
@Entity(name = "Supporter")
@Table(name = "Supporter")
public class SupporterVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long supporterNum;
	@Column
	private String nameYN;
	@Column
	private String division;
	@Column
	private Long amount;
	@Column
	private String amountYN;
	@Column(updatable = false)
	@CreationTimestamp
	private Timestamp regTime;

	@Transient
	private String amountStr;
	@Transient
	private String regTimeCal;
	
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	
	@ManyToOne
	@JoinColumn(name = "memberNum")
	private MemberVO memberVO;
	
	public String getRegTimeCal() {
		
		Calendar ca = Calendar.getInstance();
		Timestamp todayChk = new Timestamp(ca.getTimeInMillis());
		
		System.out.println("------------------------------------ " + todayChk + ", " + this.getRegTime());
		long result = todayChk.getTime() - this.regTime.getTime();
		System.out.println("result chk: " + this.getMemberVO().getMemberName() + ", " + result);
		result =  ( result / 1000 ) / 60;
		System.out.println("result chk: " + this.getMemberVO().getMemberName() + ", " + result);
		
		System.out.println("test area----");
		System.out.println(TimeUnit.MILLISECONDS.toHours(result));
		System.out.println(TimeUnit.MILLISECONDS.toDays(result));
		System.out.println(TimeUnit.MICROSECONDS.toHours(result));
		
		if(result < 60) {
			return result + "분 전";
		} else {
			
			result = result % 60;
			System.out.println("result chk: " + this.getMemberVO().getMemberName() + ", " + result);
			
			if(result < 24) {
				return result + "시간 전";
			} else {	
				result = result % 24;
				return result + "일 전";
			}
			
		}
	
	}
	
	public String getDivision() {
		
		if(this.division.equals("F")) {
			return "펀딩";
		} else {
			return "지지서명";
		}
		
	}
	
	public String getAmountStr() {
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(this.getAmount());
	}
	
}
