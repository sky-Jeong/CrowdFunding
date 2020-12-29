package com.jsky.sb8.member;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

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
	
}
