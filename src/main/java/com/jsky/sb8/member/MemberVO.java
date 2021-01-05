package com.jsky.sb8.member;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.jsky.sb8.project.funding.detail.community.CommunityVO;

import lombok.Data;

@Data
@Entity(name = "Member")
@Table(name = "Member")
public class MemberVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long memberNum;
	@Column
	private String memberName;
	@Column(updatable = false)
	private String email;
	@Column
	private String password;
	@Column
	@CreationTimestamp
	private Timestamp regDate;
	@Column
	private String status;
	
	@OneToMany(mappedBy = "memberVO", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<CommunityVO> communities;
	
}
