package com.jsky.sb8.project.funding.detail.community;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;

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
@Entity(name = "Community")
@Table(name = "Community")
public class CommunityVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long writeNum;
	@Column
	private String category;
	@Column
	private String contents;
	@Column(updatable = false)
	@CreationTimestamp
	private Timestamp regDate;
	@Column
	private long writer;
	@Column
	private long ref;
	@Column
	private long step;
	@Column
	private long tmpNum;

	@ManyToOne
	@JoinColumn(name = "memberNum")
	private MemberVO memberVO;
	
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	
	@Transient
	private long regTime;
	
	public String getCategory() {
		
		String category = this.category;
		
		if(category.equals("C")) {
			return "응원";
		} else if (category.equals("O")) {
			return "의견";
		} else if (category.equals("R")) {
			return "체험 리뷰";
		} else {
			return "카테고리 오류";
		}
		
	}
	
	public long getRegTime() {
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
		
		long result = today.getTime() - this.regDate.getTime();
		result = (result / (1000 * 60 * 60)) % 24;
		
		if(result >= 24) {
			result = result % 24;
		}
		
		return result;
		
	}
	
}
