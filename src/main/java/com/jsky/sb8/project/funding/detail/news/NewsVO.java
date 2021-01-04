package com.jsky.sb8.project.funding.detail.news;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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

import com.jsky.sb8.project.funding.FundingVO;

import lombok.Data;

@Data
@Table(name = "News")
@Entity(name = "News")
public class NewsVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long newsNum;
	@Column
	private String charDivision;
	@Column
	private long tmpNum;
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	@Column
	private String title;
	@Column
	private String contents;
	@Column
	private Timestamp regDate;
	
	@Transient
	private String writeDate;
	@Transient
	private String category;
	@Transient
	private long uploadDate;
	
	public String getWriteDate() {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return df.format(this.regDate);
		
	}
	
	public String getCategory() {
		
		String result = this.getCharDivision();
		
		if(result.equals("F")) {
			return "FAQ";
		} else if (result.equals("P")) {
			return "결제";
		} else if ( result.equals("C")) {
			return "교환/펀딩금 반환/AS";
		} else if ( result.equals("A")) {
			return "달성률";
		} else if ( result.equals("S")) {
			return "발송";
		} else if ( result.equals("M")) {
			return "메이킹스토리";
		} else if ( result.equals("E")) {
			return "이벤트";
		} else if ( result.equals("R")) {
			return "리워드안내";
		} else {
			return "기타";
		}
		
	}
	
	public long getUploadDate() {
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
		
		long result = today.getTime() - this.getRegDate().getTime();
		result = result/(24*60*60*1000);
		
		if(result < 0) {
			result = 0;
		}
		
		return result;
		
	}
	
}
