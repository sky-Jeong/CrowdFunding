package com.jsky.sb8.project.funding.like;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingVO;

import lombok.Data;

@Data
@Entity(name = "LikeProject")
@Table(name = "LikeProject")
public class LikeProjectVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long likeNum;
	@Column
	@CreationTimestamp
	private Date regDate;
	
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	
	@ManyToOne
	@JoinColumn(name = "memberNum")
	private MemberVO memberVO;
	
}
