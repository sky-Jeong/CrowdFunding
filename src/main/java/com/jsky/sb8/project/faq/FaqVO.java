package com.jsky.sb8.project.faq;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.jsky.sb8.project.funding.FundingVO;

import lombok.Data;

@Data
@Table(name = "FAQ")
@Entity(name = "FAQ")
public class FaqVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long faqNum;
	
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	
	@Column
	private String question;
	
	@Column
	private String answer;

}
