package com.jsky.sb8.project.maker;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingVO;

import lombok.Data;

@Data
@Entity(name = "MakerInfo")
@Table(name = "MakerInfo")
public class MakerVO {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long makerNum;
	@Column
	private String company;
	@Column
	private int repuScore;
	@Column
	private int commuScore;
	@Column
	private int fameScore;
	@Column
	private String tel;
	@Column
	private String kakaoPlus;
	@Column
	private String insta;
	@Column
	private String facebook;
	@Column
	private String homepage;
	@Column
	private String businessDivision;
	
	@OneToOne
	@JoinColumn(name = "makerMember")
	private MemberVO memberVO;
	
	@OneToMany(mappedBy = "makerVO", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<FundingVO> fundingVOs;
	
}
